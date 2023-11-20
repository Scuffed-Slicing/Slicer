using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Navigation;
using System.Windows.Shapes;
using HelixToolkit.Wpf;
using Xceed.Wpf.Toolkit;


using Clipper2Lib;

using PropertyTools.Wpf;


namespace Slicer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        
        private List<PathsD> _model = new List<PathsD>();

        public MainWindow()
        {
            InitializeComponent();
            NozzleWidth.DataContext = this;
            Layer.DataContext = this;

            this.DataContext = this;
        }

        private double _speed;
        public  double  Speed
        {
            get
            { return _speed;  }
            set
            {
                _speed = double.Round(value, 1);
                NozzleWidth_OnValueChanged(_speed);
            }
        }



        private double _height;
        public  double  Height
        {
            get
            { return _height;  }
            set
            {
                _height = double.Round(value, 1);
                Layer_OnValueChanged(value);
            }
        }
        public ICommand  MoveSlicerUp { get; private set; }

        private void ImportFile(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog explorer = new Microsoft.Win32.OpenFileDialog();
            bool? result = explorer.ShowDialog();
            
            explorer.DefaultExt = ".stl"; // Default file extension
            explorer.Filter = "Statement List (.stl)|*.stl"; // Filter files by extension
            
            // Process open file dialog box results 
            
            if (result == true)
            {
                // Open document
                string filename = explorer.FileName;
                Console.WriteLine(filename);
                
                StLReader reader = new StLReader();
                Model3DGroup group = reader.Read(filename);
                GeometryModel3D geometryModel = FindLargestModel(group);
                
                MeshGeometry3D mesh = geometryModel.Geometry as MeshGeometry3D ?? throw new InvalidOperationException();
                ModelVisual3D.Content = new GeometryModel3D(NormaliseMesh(mesh), geometryModel.Material);
                
                double planeSize = GetMeshSize(mesh) * 1.5;
                CuttingPlane.Length = planeSize;
                CuttingPlane.Width = planeSize;
            }
            
        }

        /*  Makes sure all points in the mesh have a Z >= 0 and centers the mesh
         *  MeshGeometry3D mesh: the mesh to be normalised
         *  return: the same mesh but with new points
         */ 
        private static MeshGeometry3D NormaliseMesh(MeshGeometry3D mesh)
        {
            Point3DCollection points = mesh.Positions;
            Point3DCollection normal = new Point3DCollection();
            
            double lowestZ = 0;
            double avgXOffset = 0;
            double avgYOffset = 0;
            foreach (var point in points)
            {
                avgXOffset += point.X;
                avgYOffset += point.Y;
                lowestZ = double.Min(point.Z, lowestZ);    

            }
            
            avgYOffset /= points.Count;
            avgXOffset /= points.Count;
            
            foreach (var point in points)
            {  
               normal.Add(new Point3D(point.X - avgXOffset, point.Y-avgYOffset, point.Z - lowestZ)); 
            }
            mesh.Positions = normal;
            return mesh;
        }
        /* calculates the largest dimension of the given mesh used for resizing the cutting plane
         * 
         */
        private static double GetMeshSize(MeshGeometry3D mesh)
        {
            double xmax = 0;
            double xmin = 0;
            double ymax = 0;
            double ymin = 0;

            foreach (var point in mesh.Positions)
            {
                xmax = double.Max(xmax, point.X);
                xmin = double.Min(xmin, point.X);
                ymax = double.Max(ymax, point.Y);
                ymin = double.Min(ymin, point.Y);
            }
            
            return double.Max(xmax - xmin, ymax - ymin);
        }

        //make clipper2 paths for model

        private static PathsD FindIntersectionPointsAtHeight(MeshGeometry3D model, double sliceHeight)
        {   PathsD output = new PathsD();
               // Console.WriteLine(model.Positions.Count);

            for(int i = 0; i < model.Positions.Count; i+=3){
                //Console.WriteLine(model.Positions[i] + " " + model.Positions[i+1]+ " " + model.Positions[i+2]); //coords of every triangle 
                Point3D p1 =model.Positions[i];
                Point3D p2 =model.Positions[i+1];
                Point3D p3 =model.Positions[i+2];
                List<Point3D> pointsOnHeight = new List<Point3D>();

                
                // Console.WriteLine(i+ "[" + p1 + " | " + p2 +" | " + p3 + "]");
                //points on plane 

                //if points parallel line
                if(p1.Z == p2.Z && p1.Z == sliceHeight){
                    pointsOnHeight.Add(p1);
                    pointsOnHeight.Add(p2);
                }
                if(p1.Z == p3.Z && p1.Z == sliceHeight){
                    pointsOnHeight.Add(p1);
                    pointsOnHeight.Add(p3);                
                }
                if(p2.Z == p3.Z && p2.Z == sliceHeight){
                    pointsOnHeight.Add(p2);
                    pointsOnHeight.Add(p3);      
                }

                //intersecting on the line
                //on the line between p1 and p2
                if(p1.Z <= sliceHeight && sliceHeight <= p2.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p1,p2,sliceHeight));
                }
                if(p2.Z <= sliceHeight && sliceHeight <= p1.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p2,p1,sliceHeight));
                }

                //on the line between p1 and p3
                if(p1.Z <= sliceHeight && sliceHeight <= p3.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p1,p3,sliceHeight));
                }
                if(p3.Z <= sliceHeight && sliceHeight <= p1.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p3,p1,sliceHeight));
                }

                //on the line between p2 and p3
                if(p2.Z <= sliceHeight && sliceHeight <= p3.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p2,p3,sliceHeight));
                }
                if(p3.Z <= sliceHeight && sliceHeight <= p2.Z){
                    pointsOnHeight.Add(FindIntersectionPoint(p3,p2,sliceHeight));
                }             
                //verbind alle punten die indezer driehoek gevonden zijn
                List<PointD> convPoints = new List<PointD>();
                foreach (var point in pointsOnHeight){
                    convPoints.Add(new PointD (point.X, point.Y));
                }
                output.Add(new PathD(convPoints));
            }

            static Point3D FindIntersectionPoint(Point3D p1, Point3D p2, double height){
            // double t = p1.Z/height + p2.Z - p1.Z;
            //rand waarde waar z1 en z2 gelijk zijn uitgehaald door voorgaande code
            double t = (height- p1.Z)/(p2.Z - p1.Z); 

            Point3D output = new Point3D(p1.X + t*(p2.X - p1.X), p1.Y + t*(p2.Y - p1.Y), height);
            Console.WriteLine("found: " + output + "[" + p1 + " | " + p2 + "]");
            return output;
        }
            return output;
        }




        private GeometryModel3D FindLargestModel(Model3DGroup group) {
            
            if (group.Children.Count == 1)
                return group.Children[0] as GeometryModel3D;
            int maxCount = int.MinValue;
            GeometryModel3D maxModel = null;
            foreach (GeometryModel3D model in group.Children) {

                Console.WriteLine(model);

                int count = ((MeshGeometry3D)model.Geometry).Positions.Count;
                if (maxCount < count) {
                    maxCount = count;
                    maxModel = model;
                }
            }
            return maxModel;
        }
        
        private void MoveUp(object sender, RoutedEventArgs e)
        {
            Console.WriteLine("test");
        }
        private void Slice(object sender, RoutedEventArgs e)
        {
            if (ModelVisual3D.Content == null)
            {
                return;
            }
            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            PathsD slice = FindIntersectionPointsAtHeight(mesh, CuttingPlane.Content.Transform.Value.OffsetZ);
            // _model.Add(slice); //adding slice to model FOR WHOLE MODEL SLICING AT ONCE
            //slice every layer en put them in mem
        }

        private void Viewport3D_OnKeyDown(object sender, KeyEventArgs e)
        {
            double height = CuttingPlane.Content.Transform.Value.OffsetZ;
            switch (e.Key)
            {
                case Key.R:
                    Console.WriteLine(_speed);
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height + _speed);
                    return;
                case Key.F:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height - _speed);
                    return;
                default:
                    return;
            }
        }

        private void NozzleWidth_OnValueChanged(double value)
        {
            double height = CuttingPlane.Content.Transform.Value.OffsetZ;
            double newHeight = 0;
            
            while (newHeight < height)
            {
                newHeight += _speed;
            }

            if (newHeight != 0)
            {
                newHeight -= _speed;
            }
            
            CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, newHeight);
        }
        
        private void Layer_OnValueChanged(double value)
        {
            Console.WriteLine(value);

            //vind alle punten op een bepaalde hoogte 
                //->check voor elke vertice als die door een bepaalde hoogte gaat zo ja bereken intersectie punt(e) op die hoogte
                //verbind die punten vie een path in clipper [enkel als die in dezelfde polygon behoren]

                //display dit 


                //fix zodat er gaten kunnen zijn
                // CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, value);


             
        }



        private void Slice_At(double y){ //return slice mybe als pass model 
            //slice = Model intersects with plane[heght]

            //create plane at height y [maybe with +- nozlewidth/2]
            //return the intersection

        }
    }

}

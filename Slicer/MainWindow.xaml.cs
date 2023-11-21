﻿using System;
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
        {   
            PathsD output = new PathsD();
            for(int i = 0; i < model.TriangleIndices.Count; i+=3){
                //Console.WriteLine(model.Positions[i] + " " + model.Positions[i+1]+ " " + model.Positions[i+2]); //coords of every triangle
                List<Point3D> tri = new List<Point3D>();
                tri.Add(model.Positions[model.TriangleIndices[i]]);
                tri.Add(model.Positions[model.TriangleIndices[i + 1]]);
                tri.Add(model.Positions[model.TriangleIndices[i + 2]]);
                
                List<Point3D> pointsOnHeight = new List<Point3D>();
                bool skip = false;
                //this loop makes each triangle point combo go once
                for (int j = 0; j < 3; j++)
                {
                    for (int k = 0; k < j; k++)
                    {
                        //the line is on the plane
                        if (tri[j].Z == tri[k].Z && tri[j].Z == sliceHeight)
                        {
                            pointsOnHeight.Add(tri[j]);
                            pointsOnHeight.Add(tri[k]);
                            //if the plane intersects with a line of a triangle the other points can be ignored
                            skip = true;
                            break;
                        }
                        
                        //check if the slice height is in between both points
                        if (double.Max(tri[j].Z, tri[k].Z) >= sliceHeight &&
                            double.Min(tri[j].Z, tri[k].Z) <= sliceHeight )
                        {
                            pointsOnHeight.Add(FindIntersectionPoint(tri[j],tri[k],sliceHeight));
                        }
                    }

                    if (skip)
                    {
                        break;
                    }
                }
        
                //verbind alle punten die indezer driehoek gevonden zijn
                List<PointD> convPoints = new List<PointD>();
                foreach (var point in pointsOnHeight){
                    convPoints.Add(new PointD (point.X, point.Y));
                }
                
                //empty groups and single points can be ignored
                if (convPoints.Count > 1)
                {
                    output.Add(new PathD(convPoints));
                }
                
            }
            
            return output;
        }
        
        static Point3D FindIntersectionPoint(Point3D p1, Point3D p2, double height){
            //rand waarde waar z1 en z2 gelijk zijn uitgehaald door voorgaande code
            double t = (height - p1.Z) / (p2.Z - p1.Z);
            
            //convert to float and add a miniscule value to height so the plane never intersects with a point
            float x1 = (float) p1.X;
            float x2 = (float) p2.X;
            
            float y1 = (float) p1.Y;
            float y2 = (float) p2.Y;
            
            return new Point3D(x1 + t * (x2 - x1), y1 + t * (y2 - y1), height);
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
        
        private void Slice(object sender, RoutedEventArgs e)
        {
            if (ModelVisual3D.Content == null)
            {
                return;
            }
            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            PathsD slice = FindIntersectionPointsAtHeight(mesh, CuttingPlane.Content.Transform.Value.OffsetZ);
            foreach (var path in slice)
            {
                foreach (var point in path)
                {
                    Console.WriteLine(point.x + ", " + point.y);
                }
                Console.WriteLine();
            }
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

    }

}

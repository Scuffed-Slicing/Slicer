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




using PropertyTools.Wpf;


namespace Slicer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

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
        private GeometryModel3D FindLargestModel(Model3DGroup group) {
            if (group.Children.Count == 1)
                return group.Children[0] as GeometryModel3D;
            int maxCount = int.MinValue;
            GeometryModel3D maxModel = null;
            foreach (GeometryModel3D model in group.Children) {
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
            Console.WriteLine("Cut my life into pieces");
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

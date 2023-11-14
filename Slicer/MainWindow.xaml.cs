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
            this.DataContext = this;
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
                MeshGeometry3D mesh = geometryModel.Geometry as MeshGeometry3D;
                // access triangles
                Int32Collection indices = mesh.TriangleIndices;

                ModelVisual3D.Content = geometryModel;
            }
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
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height + 1);
                    return;
                case Key.F:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height - 1);
                    return;
                default:
                    return;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Media3D;
using HelixToolkit.Wpf;
using Clipper2Lib;
using System.IO;


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
            NozWidth.DataContext = this;
            ShellUpDown.DataContext = this;
            CodeBool.DataContext = this;
            
            _figure = new List<PathsD>();
            _infill = new List<PathsD>();
            _roofs = new List<PathsD>();
            _supports = new List<PathsD>();
            _supportsInfill = new List<PathsD>();


            
            _nozzleWidth = 0.4;
            _shells = 1;
            _layerHeight = 0.2;
            
        }


        private List<PathsD> _figure;
        private List<PathsD> _infill;
        private List<PathsD> _roofs;
        private List<PathsD> _supports;
        private List<PathsD> _supportsInfill;

        
        private bool _genCode;
        private int _shells;
        private double _nozzleWidth;
        private double _layerHeight;

        public  double  NozzleWidth
        {
            get => _nozzleWidth;
            set => _nozzleWidth = double.Round(value, 1);
            // NozzleWidth_OnValueChanged(_nozzleWidth);
        }

        public int Shells
        {
            get => _shells;
            set => _shells = value;
        }
        
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
                GeometryModel3D geometryModel = ModelHandler.FindLargestModel(group);
                
                MeshGeometry3D mesh = geometryModel.Geometry as MeshGeometry3D ?? throw new InvalidOperationException();
                ModelVisual3D.Content = new GeometryModel3D(ModelHandler.NormaliseMesh(mesh), geometryModel.Material);
                
                double planeSize = ModelHandler.GetMeshSize(mesh) * 1.5;
                CuttingPlane.Length = planeSize;
                CuttingPlane.Width = planeSize;
                

            }
            
        }
        
        //make clipper2 paths for model
        
        private void Slice(object sender, RoutedEventArgs e)
        {
            if (ModelVisual3D.Content == null)
            {
                return;
            }
            
            if (_nozzleWidth == 0)
            {
                return;
            }
            

            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            
            _figure = SlicerHandler.SliceAll(mesh, _nozzleWidth, _layerHeight, _shells);
            _roofs = SlicerHandler.GenerateAllRoofs(_figure, _nozzleWidth, _shells); 
            _infill = SlicerHandler.GenerateAllInfill(_figure, _roofs, 0.1, ModelHandler.GetMeshSize(mesh), _nozzleWidth, _shells);

            _supports = SlicerHandler.GenerateSupports(_figure); 
            _supportsInfill = SlicerHandler.GenerateAllInfill(_supports, _roofs, 0.1, ModelHandler.GetMeshSize(mesh), _nozzleWidth, 1);

            Console.WriteLine("layers");

            Console.WriteLine(_supports.Count.ToString());
            Console.WriteLine(_figure.Count.ToString());

            

            Console.WriteLine(CodeBool.IsChecked);
            
            if (CodeBool.IsChecked.Value)
            {
                // GCodeHandler gCodeHandler = new GCodeHandler();
                // gCodeHandler.GenerateGCodeModel(_figure, _roofs, _infill, _nozzleWidth, ModelHandler.GetMeshSize(mesh), _layerHeight);
                var outPath = "../../../output.gcode";
                GcodeHandlerV2 gCodeHandlerV2 = new GcodeHandlerV2();
                gCodeHandlerV2.GenerateGCodeModel(_figure, _roofs, _infill, _nozzleWidth, ModelHandler.GetMeshSize(mesh), _layerHeight, outPath);
            }

            
            int printNr = (int)(CuttingPlane.Content.Transform.Value.OffsetZ / _nozzleWidth);
            if (printNr <= _figure.Count && printNr >= 0)
            {
                ShowSlice(printNr);
            } else {
                ShowSlice(0);
            }
            
        }
        
        private void printSlice(PathsD slices)
        {
            Console.WriteLine("===========================================================");
            foreach (var slice in slices)
            {
                foreach (var point in slice)
                {
                    Console.WriteLine(point.x + ", " + point.y);
                }
                Console.WriteLine();
            }
            Console.WriteLine("===========================================================");
        }
        private void ShowSlice(int printNr)
        {
            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            PopupWindow popup = new PopupWindow(_figure , _infill, _roofs,_supports,_supportsInfill, ModelHandler.GetMeshSize(mesh), printNr);
            
            popup.ShowDialog();
        }
        



        private void Viewport3D_OnKeyDown(object sender, KeyEventArgs e)
        {
            
            double height = CuttingPlane.Content.Transform.Value.OffsetZ;
            switch (e.Key)
            {
                case Key.R:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height + _nozzleWidth);
                    return;
                case Key.F:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, height - _nozzleWidth);
                    return;
                default:
                    return;
            }
        }
        
    }

}

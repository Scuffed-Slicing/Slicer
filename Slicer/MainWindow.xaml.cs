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
            NozzleWidth.DataContext = this;
            this.DataContext = this;
            _figure = new List<PathsD>();
            _infill = new List<PathsD>();
            _speed = 0.4;
            _shells = 4;
            _genCode = true;
            _layerHeight = 0.2;
            
        }


        private List<PathsD> _figure;
        private List<PathsD> _infill;
        private bool _genCode;
        private int _shells;
        private double _speed;
        private double _layerHeight;

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
                
                _figure = SlicerHandler.SliceAll(mesh, _speed,  _layerHeight, _shells);
                _infill = SlicerHandler.GenerateAllInfill(_figure, 0.1, ModelHandler.GetMeshSize(mesh), _speed, _shells);
                if (_genCode)
                {
                    GCodeHandler gCodeHandler = new GCodeHandler();

                    
                    GCodeHandler temp = new GCodeHandler();
                    for (var i = 0; i < _figure.Count(); i++){
                        foreach (var p in _infill[i])
                        {   
                            _figure[i].Add(p);
                        }
                    }
                    gCodeHandler.GenerateGCodeModel(_figure, _speed,ModelHandler.GetMeshSize(mesh), _layerHeight);

                }

            }
            
        }
        
        //make clipper2 paths for model
        
        private void Slice(object sender, RoutedEventArgs e)
        {
            if (ModelVisual3D.Content == null)
            {
                return;
            }
            
            if (_speed == 0)
            {
                return;
            }
            
            if (_figure.Count == 0)
            {
                MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
                _figure = SlicerHandler.SliceAll(mesh, _speed, _layerHeight, _shells);
                _infill = SlicerHandler.GenerateAllInfill(_figure, 0.1, ModelHandler.GetMeshSize(mesh), _speed, _shells);
                
            }
            int printNr = (int)(CuttingPlane.Content.Transform.Value.OffsetZ / _speed);
            Console.WriteLine("printing: " + printNr);
            Console.WriteLine("infill total: " + _infill.Count);
            Console.WriteLine("infill total lines: " + _infill[0].Count);
            if (printNr <= _figure.Count && printNr >= 0)
            {
                ShowSlice(_figure[printNr], _infill[printNr]);
                
            }
            GCodeHandler gCodeHandler = new GCodeHandler();
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
        private void ShowSlice(PathsD slice, PathsD infill)
        {
            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            PopupWindow popup = new PopupWindow(slice , infill, ModelHandler.GetMeshSize(mesh));
            
            popup.ShowDialog();
        }
        



        private void Viewport3D_OnKeyDown(object sender, KeyEventArgs e)
        {
            
            double height = CuttingPlane.Content.Transform.Value.OffsetZ;
            switch (e.Key)
            {
                case Key.R:
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
            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            if (mesh != null)
            {
                _figure = SlicerHandler.SliceAll(mesh, _speed, _layerHeight, _shells);
                _infill = SlicerHandler.GenerateAllInfill(_figure, 0.1, ModelHandler.GetMeshSize(mesh), _speed, _shells);
                if (_genCode)
                {
                    GCodeHandler gCodeHandler = new GCodeHandler();
                    gCodeHandler.GenerateGCodeModel(_figure, _speed, ModelHandler.GetMeshSize(mesh), _layerHeight);
                }
            }
            
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

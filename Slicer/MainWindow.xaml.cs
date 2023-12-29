using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Media3D;
using HelixToolkit.Wpf;
using Clipper2Lib;
using System.IO;
using System.Timers;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Media;
using System.Windows.Shapes;
using Rectangle = System.Drawing.Rectangle;


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
            EnableSupps.DataContext = this;
            LayerSlider.DataContext = this;
            LayerTextBox.DataContext = this;
            
            // LayerSlider.Maximum = _shells.Count - 1;
            
            _figure = new List<PathsD>();
            _infill = new List<PathsD>();
            _roofs = new List<PathsD>();
            _supports = new List<PathsD>();
            _supportsInfill = new List<PathsD>();
        }
        private double _offset;


        private List<PathsD> _figure;
        private List<PathsD> _infill;
        private List<PathsD> _roofs;

        private List<PathsD> _supports;
        private List<PathsD> _supportsInfill;
        public  double  m_height;

        public  double  NozzleWidth
        {
            get => Settings.NozzleWidth;
            set => Settings.NozzleWidth = double.Round(value, 1);
            // NozzleWidth_OnValueChanged(_nozzleWidth);
        }

        public int Shells
        {
            get => Settings.ShellCount;
            set => Settings.ShellCount = value;
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
                // ModelVisual3D.Content = geometryModel;
                MeshGeometry3D mesh = geometryModel.Geometry as MeshGeometry3D ?? throw new InvalidOperationException();
                ModelVisual3D.Content = new GeometryModel3D(ModelHandler.NormaliseMesh(mesh), geometryModel.Material);
                Settings.SquareSize = ModelHandler.GetMeshSize(mesh);
                double planeSize = Settings.SquareSize * 1.5;
                CuttingPlane.Length = planeSize;
                CuttingPlane.Width = planeSize;
                _offset = ModelHandler.GetMeshSize(mesh);
                Slice();
                Draw();
            }
            
        }
        
        //make clipper2 paths for model
        private void GenerateGcode(object sender, RoutedEventArgs e){
                var outPath = "../../../output.gcode";
                GcodeHandlerV2 gCodeHandlerV2 = new GcodeHandlerV2();
                gCodeHandlerV2.GenerateGCodeModel(_figure, _roofs,_supportsInfill, _infill, outPath);
            
        }
        private void ReSlice(object sender, RoutedEventArgs e){
            Slice();
        }
        
        private void Slice()
        {
            if (ModelVisual3D.Content == null)
            {
                return;
            }
            
            if (Settings.NozzleWidth == 0)
            {
                return;
            }
            

            MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
            var stopWatch = new Stopwatch();
            
            Console.WriteLine("slicing main figure...");
            stopWatch.Start();
            _figure = SlicerHandler.SliceAll(mesh);
            stopWatch.Stop();
            Console.WriteLine($"Done! {stopWatch.Elapsed}s elapsed");
            stopWatch.Reset();

            Console.WriteLine("generating roofs...");
            stopWatch.Start();
            _roofs = SlicerHandler.GenerateAllRoofs(_figure); 
            stopWatch.Stop();
            Console.WriteLine($"Done! {stopWatch.Elapsed}s elapsed");
            stopWatch.Reset();
            

            
            Console.WriteLine("generating infill shells...");
            stopWatch.Start();
            _infill = SlicerHandler.GenerateAllInfill(_figure, _roofs, Settings.FigureFill);
            stopWatch.Stop();
            Console.WriteLine($"Done! {stopWatch.Elapsed}s elapsed");
            stopWatch.Reset();

            if(EnableSupps.IsChecked.Value){
                Console.WriteLine("generating support shells...");
                stopWatch.Start();
                _supports = SlicerHandler.GenerateSupports(_figure);
                stopWatch.Stop();
                Console.WriteLine($"Done! {stopWatch.Elapsed}s elapsed");
                stopWatch.Reset();
                Console.WriteLine("generating support infill...");
                stopWatch.Start();           
                _supportsInfill = SlicerHandler.GenerateAllInfill(_supports, _roofs, Settings.SupportFill);
                stopWatch.Stop();
                Console.WriteLine($"Done! {stopWatch.Elapsed}s elapsed");
                stopWatch.Reset();
            }

            
            
            // Console.WriteLine(CodeBool.IsChecked);
            
            // if (CodeBool.IsChecked.Value)
            // {
            //     // GCodeHandler gCodeHandler = new GCodeHandler();
            //     // gCodeHandler.GenerateGCodeModel(_figure, _roofs, _infill, _nozzleWidth, ModelHandler.GetMeshSize(mesh), _layerHeight);
            //     var outPath = "../../../output.gcode";
            //     GcodeHandlerV2 gCodeHandlerV2 = new GcodeHandlerV2();
            //     gCodeHandlerV2.GenerateGCodeModel(_figure, _roofs,_supportsInfill, _infill, outPath);
            // }

            
            // int printNr = (int)(CuttingPlane.Content.Transform.Value.OffsetZ / Settings.LayerHeight);
            // if (printNr <= _figure.Count && printNr >= 0)
            // {
            //     ShowSlice(printNr);
            // } else {
            //     ShowSlice(0);
            // }
            LayerSlider.Maximum = _figure.Count - 1;
            Draw();
            
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
            // PopupWindow popup = new PopupWindow(_figure , _infill, _roofs,_supports,_supportsInfill, ModelHandler.GetMeshSize(mesh), printNr);
            
            // popup.ShowDialog();
        }
        



        private void Viewport3D_OnKeyDown(object sender, KeyEventArgs e)
        {
            
             m_height = CuttingPlane.Content.Transform.Value.OffsetZ;
            switch (e.Key)
            {
                case Key.R:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, m_height + Settings.LayerHeight);
                    if(CuttingPlane.Content.Transform.Value.OffsetZ >0){
                        Draw();
                    }
                    return;
                case Key.F:
                    CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, m_height - Settings.LayerHeight);
                    if(CuttingPlane.Content.Transform.Value.OffsetZ >0){
                        Draw();
                    }
                    return;
                default:
                    return;
            }
        }
        public void Draw(){
        Canvas.Children.Clear();
        int layer = (int)(CuttingPlane.Content.Transform.Value.OffsetZ/ Settings.LayerHeight);
        if(_figure.Count <= layer){
            return;
        }
        
          List < Brush > strokes = new List<Brush>
        {
            System.Windows.Media.Brushes.Red,
            System.Windows.Media.Brushes.Blue,
            System.Windows.Media.Brushes.Green
        };
        var brush = 0;
        var zoom = 4;

        foreach (var path in _figure[layer])
        {
            //shells
            for (int j = 0; j < path.Count; j++)
            {
                Line line = new Line();
        
                line.Stroke = strokes[brush % strokes.Count];
                line.StrokeThickness = 2;
        
                line.X1 = (_offset + path[j].x) * zoom;
                line.Y1 = (_offset + path[j].y) * zoom;
        
                line.X2 = (_offset + path[(j + 1) % path.Count].x) * zoom;
                line.Y2 = (_offset + path[(j + 1) % path.Count].y) * zoom;
                
                Canvas.Children.Add(line);
            }
            brush++;
        }
        
        //roofs
        foreach (var path in _roofs[layer]){
            for (int j = 0; j < path.Count; j++)
            {
                Line line = new Line();
            
                line.Stroke = System.Windows.Media.Brushes.Yellow;
                line.StrokeThickness = 2;
                
                line.X1 = (_offset + path[j].x) * zoom;
                line.Y1 = (_offset + path[j].y) * zoom;
                
                line.Y2 = (_offset + path[(j + 1) % path.Count].y) * zoom;
                line.X2 = (_offset + path[(j + 1) % path.Count].x) * zoom;

                Canvas.Children.Add(line);
            }
        }
        
        // infill

        foreach (var path in _infill[layer]){
                for (int j = 0; j < path.Count; j++)
                {
                    Line line = new Line();
                
                    line.Stroke = System.Windows.Media.Brushes.Black;
                    line.StrokeThickness = 1;
                    
                    line.X1 = (_offset + path[j].x) * zoom;
                    line.Y1 = (_offset + path[j].y) * zoom;
                    
                    line.Y2 = (_offset + path[(j + 1) % path.Count].y) * zoom;
                    line.X2 = (_offset + path[(j + 1) % path.Count].x) * zoom;

                    Canvas.Children.Add(line);
                }
            }
            //support infill
        if(EnableSupps.IsChecked.Value){
            foreach (var path in _supportsInfill[layer]){
                for (int j = 0; j < path.Count; j++)
                {
                    Line line = new Line();
                
                    line.Stroke = System.Windows.Media.Brushes.Pink;
                    line.StrokeThickness = 3;
                    
                    line.X1 = (_offset + path[j].x) * zoom;
                    line.Y1 = (_offset + path[j].y) * zoom;
                    
                    line.Y2 = (_offset + path[(j + 1) % path.Count].y) * zoom;
                    line.X2 = (_offset + path[(j + 1) % path.Count].x) * zoom;

                    Canvas.Children.Add(line);
                }
            }
        }

    }
        public int Layer
        {
            get => (int)m_height;
            
            set
            {
                m_height = value;
                LayerTextBox.Text = value.ToString();
                CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, m_height*Settings.LayerHeight);

                Draw();
            }
        }
        
        
        public string LayerString
        {
            get => m_height.ToString();
            
            set
            {
                try
                {
                    m_height = int.Parse(value);
                }
                catch (FormatException)
                {
                    return;
                }

                LayerSlider.Value = int.Parse(value);
                CuttingPlane.Content.Transform = new TranslateTransform3D(0, 0, m_height*Settings.LayerHeight);

                Draw();
            }
        }
    }
    
    
}

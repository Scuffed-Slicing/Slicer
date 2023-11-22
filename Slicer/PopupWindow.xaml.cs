using System.Collections.Generic;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Media;
using System.Windows.Shapes;
using Clipper2Lib;

namespace Slicer;

public partial class PopupWindow : Window
{
    public PopupWindow(PathsD slice, double offset)
    {
        InitializeComponent();
        List < Brush > strokes = new List<Brush>
        {
            System.Windows.Media.Brushes.Black,
            System.Windows.Media.Brushes.Red,
            System.Windows.Media.Brushes.Blue,
            System.Windows.Media.Brushes.Green,
            System.Windows.Media.Brushes.Yellow
        };
        var brush = 0;
        foreach (var path in slice)
        {
            
            for (int i = 0; i < path.Count; i++)
            {
                Line line = new Line();
            
                line.Stroke = strokes[brush % strokes.Count];
                line.StrokeThickness = 2;

                int zoom = 5;
                
                line.X1 = (offset + path[i].x) * zoom;
                line.Y1 = (offset + path[i].y) * zoom;
                
                line.X2 = (offset + path[(i + 1) % path.Count].x) * zoom;
                line.Y2 = (offset + path[(i + 1) % path.Count].y) * zoom;

                Canvas.Children.Add(line);
                
            }

            brush++;
        }
    }
}
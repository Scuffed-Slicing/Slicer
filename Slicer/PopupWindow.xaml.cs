using System.Windows;
using System.Windows.Shapes;
using Clipper2Lib;

namespace Slicer;

public partial class PopupWindow : Window
{
    public PopupWindow(PathsD slice, double offset)
    {
        InitializeComponent();
        foreach (var path in slice)
        {
            for (int i = 0; i < path.Count; i++)
            {
                Line line = new Line();
            
                line.Stroke = System.Windows.Media.Brushes.Black;
                line.StrokeThickness = 2;
            
                line.X1 = (offset + path[i].x) * 5;
                line.Y1 = (offset + path[i].y) * 5;
            
                line.X2 = (offset + path[(i + 1) % path.Count].x) * 5;
                line.Y2 = (offset + path[(i + 1) % path.Count].y) * 5;

                Canvas.Children.Add(line);
                
            }

        }
    }
}
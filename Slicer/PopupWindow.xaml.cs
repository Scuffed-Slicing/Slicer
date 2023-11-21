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
            Line line = new Line();
            
            line.Stroke = System.Windows.Media.Brushes.Black;
            line.StrokeThickness = 2;
            
            line.X1 = (offset + path[0].x) * 5;
            line.Y1 = (offset + path[0].y) * 5;
            
            line.X2 = (offset + path[1].x) * 5;
            line.Y2 = (offset + path[1].y) * 5;

            Canvas.Children.Add(line);
        }
    }
}
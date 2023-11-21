using System.Windows;
using System.Windows.Shapes;
using Clipper2Lib;

namespace Slicer;

public partial class PopupWindow : Window
{
    public PopupWindow(PathsD slice)
    {
        InitializeComponent();
        foreach (var path in slice)
        {
            Line line = new Line();
            
            line.Stroke = System.Windows.Media.Brushes.Black;
            line.StrokeThickness = 2;
            
            line.X1 = path[0].x * 10;
            line.Y1 = path[0].y * 10;
            
            line.X2 = path[1].x * 10;
            line.Y2 = path[1].y * 10;

            Canvas.Children.Add(line);
        }
    }
}
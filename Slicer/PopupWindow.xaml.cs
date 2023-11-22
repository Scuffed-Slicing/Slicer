using System;
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
    public PopupWindow(PathsD slice, PathsD infill, double offset)
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
        int zoom = 5;
        foreach (var path in slice)
        {
            //shells
            for (int j = 0; j < path.Count; j++)
            {
                Line line = new Line();

                line.Stroke = strokes[brush % strokes.Count];
                line.StrokeThickness = 2;

                line.X1 = (offset + path[j].x) * zoom;
                line.Y1 = (offset + path[j].y) * zoom;

                line.X2 = (offset + path[(j + 1) % path.Count].x) * zoom;
                line.Y2 = (offset + path[(j + 1) % path.Count].y) * zoom;

                Canvas.Children.Add(line);
            }
            brush++;
        }


        //infill
        foreach (var path in infill){
            for (int j = 0; j < path.Count; j += 2)
            {
                Line line = new Line();
            
                line.Stroke = System.Windows.Media.Brushes.Gray;
                line.StrokeThickness = 1;
                
                line.X1 = (offset + path[j].x) * zoom;
                line.Y1 = (offset + path[j].y) * zoom;
                
                line.X2 = (offset + path[j + 1].x) * zoom;
                line.Y2 = (offset + path[j + 1].y) * zoom;

                Canvas.Children.Add(line);
            }
        }
    }
}
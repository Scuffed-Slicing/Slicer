﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Media;
using System.Windows.Shapes;
using Clipper2Lib;
using Rectangle = System.Drawing.Rectangle;


namespace Slicer;

public partial class PopupWindow : Window
{
    private List<PathsD> _shells;
    private List<PathsD> _infill;
    private double _offset;
    private int _layer;

    public int Layer
    {
        get => _layer;
        
        set
        {
            _layer = value;
            LayerTextBox.Text = value.ToString();
            Draw();
        }
    }
    
    
    public string LayerString
    {
        get => _layer.ToString();
        
        set
        {
            try
            {
                _layer = int.Parse(value);
            }
            catch (FormatException)
            {
                return;
            }

            LayerSlider.Value = int.Parse(value);
            Draw();
        }
    }
    
    public void Draw()
    {
        Canvas.Children.Clear();
        
          List < Brush > strokes = new List<Brush>
        {
            System.Windows.Media.Brushes.Black,
            System.Windows.Media.Brushes.Red,
            System.Windows.Media.Brushes.Blue,
            System.Windows.Media.Brushes.Green,
            System.Windows.Media.Brushes.Yellow
        };
        var brush = 0;
        var zoom = 5;

        foreach (var path in _shells[_layer])
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
        
        //infill
        foreach (var path in _infill[_layer]){
            for (int j = 0; j < path.Count; j++)
            {
                Line line = new Line();
            
                line.Stroke = System.Windows.Media.Brushes.Pink;
                line.StrokeThickness = 1;
                
                line.X1 = (_offset + path[j].x) * zoom;
                line.Y1 = (_offset + path[j].y) * zoom;
                
                line.Y2 = (_offset + path[(j + 1) % path.Count].y) * zoom;
                line.X2 = (_offset + path[(j + 1) % path.Count].x) * zoom;

                Canvas.Children.Add(line);
            }
        }
    }
    public PopupWindow(List<PathsD> shells, List<PathsD> infill, double offset, int layer)
    {

        InitializeComponent();
        _infill = infill;
        _shells = shells;
        _offset = offset;
        _layer = layer;
        
        LayerSlider.DataContext = this;
        LayerTextBox.DataContext = this;
        
        LayerSlider.Maximum = _shells.Count - 1;
        Draw();
    }
    
}
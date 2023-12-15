using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Clipper2Lib;

namespace Slicer;

public class GcodeHandlerV2
{
    //removed the raise 0.2
    private string[] _setuplines =
        {
            "M140 S60; set bet temp to 60",
            "M105; report temps",
            "M107 ;fan off",
            "M104 S200; set extruder temp",
            "M82 ;absolute extrusion mode",
            "M220 S100 ;Reset Feed rate",
            "M221 S100 ;Reset Flow rate",
            
            "G28 ;Home",
            
            "G92 E0 ;Reset Extruder",
            "G1 Z2.0 F3000 ;Move Z Axis up",
            "G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position",
            "M190 S60; wait for bed temp to reach 60",
            "M109 S200.000000; wait for extruder temp to reach 200",
            "G1 X10.1 Y145.0 Z0.28 F1500.0 E15 ;Draw the first line",
            "G1 X10.4 Y145.0 Z0.28 F5000.0 ;Move to side a little",
            "G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line",
            "G92 E0  ;Reset Extruder",
            "G0 E-1.0000 F1800 ;Retract a bit",
            "G0 Z0.2 F3000 ;Move Z Axis up",
            "G0 E0.0000 F1800",
        };
    
    string[] _resetLines = {
        ";-----------------------PrintDone-------------------\n\n",
        "M140 S0 ;bed Temp",
        "M107 ;fan off",
        "M220 S100 ; reset speed overwrite to 100%",
        "M221 S100 ; reset extrude factor overwrite to 100%",
        "G90 ; coordinates to relative",
        "G1 F1800 E-3 ;retract filament 3 mm",
        "G1 F3000 Z20 ; move up 20 mm",
        "G90 ;coords to absolute",
        "G1 X0 Y235 F1000 ; move to front of heat bed",
        "M107 ;fan off",
        "84 ;Disable stepper motors",
        "M82 ;absolute extrusion mode",
        "G1 F1500 E5",
        ";-----------------------ResetDone-------------------\n\n"
    };

    private const string PrintCommand = "G1 F{0} X{1} Y{2} E{3}; print to next point\n";
    private const string MoveCommand = "G0 F{0} X{1} Y{2}; move to next point\n";
    private const string ExtrudeCommand = "G1 F{0} E{1}; set extrusion level\n";
    private const string MoveUpCommand = "G1 F{0} Z{1}; moving up\n";
    private double _filamentAmount = -1;
    
    public void GenerateGCodeModel(List<PathsD> model, List<PathsD> roofs, List<PathsD> infill, double nozzleWidth, double offset, double layerHeight, string filePath){
        File.Delete(filePath);
        //do setup of printer
        File.WriteAllLines(filePath, _setuplines);
        var height = 0.0;
        for (var i = 0; i < model.Count; i++)
        {
            foreach (var path in model[i])
            {
                GenerateClosedPath(path, offset, nozzleWidth, filePath);
                File.AppendAllText(filePath, "\n");

            }
            File.AppendAllText(filePath, ";-----------------------Shells Done-------------------\n\n");

            foreach (var path in roofs[i])
            {
                GenerateClosedPath(path, offset, nozzleWidth, filePath);
                File.AppendAllText(filePath, "\n");


            }
            File.AppendAllText(filePath, ";-----------------------Roofs Done-------------------\n\n");

            
            foreach (var path in infill[i])
            {
                GenerateOpenPath(path, offset, nozzleWidth, filePath);
                File.AppendAllText(filePath, "\n");

            }
            File.AppendAllText(filePath, ";-----------------------Infill Done-------------------\n\n");
            
            if (i == 0)
            {
                File.AppendAllText(filePath, "M106; reenable fans");
            }
            height += layerHeight;
            File.AppendAllText(filePath, string.Format(MoveUpCommand, 1500, Clean(height)));
            File.AppendAllText(filePath, ";-----------------------Layer Done-------------------\n\n\n");
        }

        //reset printer
        File.AppendAllLines(filePath, _resetLines);
    }

    private void GenerateOpenPath(PathD path, double offset, double nozzleWidth, string commands)
    {
        for (int i = 0; i < path.Count; i++)
        {
            if (i == 0)
            {
                //move to the first point
                File.AppendAllText(commands,string.Format(MoveCommand, 1500, Clean(path[i].x + offset), Clean(path[i].y + offset)));
                
                // reset the extrusion
                ExtrudeFilament(commands, 1);
                continue;
            }
            
            var lenght = CalcLenght(path[i], path[i - 1]);
            _filamentAmount += CalcFil(nozzleWidth, lenght);
            File.AppendAllText(commands,string.Format(PrintCommand, 1500, Clean(path[i].x + offset), Clean(path[i].y + offset), _filamentAmount));
        }
        ExtrudeFilament(commands, -1);
    }

    private void GenerateClosedPath(PathD path, double offset, double nozzleWidth, string commands)
    {
        for (int i = 0; i <= path.Count; i++)
        {
            if (i == 0)
            {
                //move to the first point
                File.AppendAllText(commands,string.Format(MoveCommand, 1500, Clean(path[i].x + offset), Clean(path[i].y + offset)));
                
                // reset the extrusion
                ExtrudeFilament(commands, 1);
                continue;
            }
            
            var lenght = CalcLenght(path[i % path.Count], path[i - 1]);
            _filamentAmount += CalcFil(nozzleWidth, lenght);
            File.AppendAllText(commands,string.Format(PrintCommand, 1500, Clean(path[i % path.Count].x + offset), Clean(path[i % path.Count].y + offset), _filamentAmount));
        }
        ExtrudeFilament(commands, -1);
    }
    private static string Clean(double value)
    {
        return value.ToString(System.Globalization.CultureInfo.InvariantCulture);
    }

    private static double CalcLenght(PointD point, PointD prevPoint)
    {
        return Math.Sqrt(Math.Pow(prevPoint.x - point.x, 2.0) + Math.Pow(prevPoint.y - point.y, 2.0));
    }
    
    private static double CalcFil(double nozzleWidth, double length)
    {
        return nozzleWidth / 2 * nozzleWidth * length / (1.75 / 2 * 1.75 / 2 * Math.PI);
    }

    private void ExtrudeFilament(string commands, double amount)
    {
        _filamentAmount += amount;
        File.AppendAllText(commands,string.Format(ExtrudeCommand, 3000, _filamentAmount));
    }
}
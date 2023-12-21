using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Clipper2Lib;

namespace Slicer;

public class GcodeHandlerV2
{
    /* 0: nozzle Temp
     * 1: nozzle Height
     */
    private const string SetUpLines =
        "M140 S60; set bet temp to 60\n" +
        "M105; report temps\n" +
        "M107 ;fan off\n" +
        "M104 S{0}; set extruder temp\n" +
        "M82 ;absolute extrusion mode\n" +
        "M220 S100 ;Reset Feed rate\n" +
        "M221 S100 ;Reset Flow rate\n" +

        "G28 ;Home\n" +

        "G92 E0 ;Reset Extruder\n" +
        "G1 Z2.0 F3000 ;Move Z Axis up\n" +
        "G1 X10.1 Y20 Z{1} F5000.0 ;Move to start position\n" +
        "M190 S60; wait for bed temp to reach 60\n" +
        "M109 S{0}; wait for extruder temp to reach 210\n" +
        "G1 X10.1 Y145.0 Z{1} F_speed.0 E15 ;Draw the first line\n" +
        "G1 X10.4 Y145.0 Z{1} F5000.0 ;Move to side a little\n" +
        "G1 X10.4 Y20 Z{1} F_speed.0 E30 ;Draw the second line\n" +
        "G92 E0  ;Reset Extruder\n";
    /* 0: the distance to which to extract the fillament to
     * 1: the Z position to which the nozzle should move
     */
    private const string ResetLines =
        ";-----------------------PrintDone-------------------\n\n\n" +
        "M140 S0 ;bed Temp\n" +
        "M107 ;fan off\n" +
        "M220 S100 ; reset speed overwrite to 100%\n" +
        "M221 S100 ; reset extrude factor overwrite to 100%\n" +
        "G1 F1800 E{0} ;retract filament 3 mm\n" +
        "G1 F3000 Z{1} ; move up mm\n" +
        "G1 X0 Y235 F1000 ; move to front of heat bed\n" +
        "M107 ;fan off\n" +
        "84 ;Disable stepper motors\n" +
        "M82 ;absolute extrusion mode\n" +
        "G1 F_speed E5\n" +
        ";-----------------------ResetDone-------------------\n\n";

    private const string PrintCommand = "G1 F{0} X{1} Y{2} E{3}; print to next point\n";
    private const string MoveCommand = "G0 F{0} X{1} Y{2}; move to next point\n";
    private const string ExtrudeCommand = "G1 F{0} E{1}; set extrusion level\n";
    private const string MoveUpCommand = "G1 F{0} Z{1}; moving up\n";
    private const int Speed = 1700;
    private const double FilamentDia = 1.75;
    private const double ExtDist = 1;
    
    private double _filamentAmount;


    public void GenerateGCodeModel(List<PathsD> model, List<PathsD> roofs,List<PathsD> supportInfill, List<PathsD> infill, string filePath){
        File.Delete(filePath);
        //do setup of printer
        var height = Settings.LayerHeight;
        
        var commands = "";
        commands += string.Format(SetUpLines, 210, Clean(height));
        commands += ExtrudeFilament(-ExtDist);
        File.AppendAllText(filePath, commands);
        
        for (var i = 0; i < model.Count; i++)
        {
            commands = "";
            foreach (var path in model[i])
            {
                commands += GenerateClosedPath(path, i == 0);
                commands += "\n";
            }
            commands += ";-----------------------Shells Done-------------------\n\n";

            foreach (var path in roofs[i])
            {
                commands += GenerateClosedPath(path, false);
                commands += "\n";
            }
            commands += ";-----------------------Roofs Done-------------------\n\n";

            
            foreach (var path in infill[i])
            {
                commands += GenerateOpenPath(path,  false);
                commands += "\n";
            }
            commands += ";-----------------------Infill Done-------------------\n\n";

            foreach (var path in supportInfill[i])
            {
                commands += GenerateOpenPath(path, false);
                commands += "\n";
            }
            commands += ";-----------------------Support infill Done-------------------\n\n";
            
            if (i < 4)
            {
                commands += $"M106 S{(i + 1) * (255/4)}; ramping fan\n";
            }
            height += Settings.LayerHeight;
            commands +=  string.Format(MoveUpCommand, Speed, Clean(height));
            commands += ";-----------------------Layer Done-------------------\n\n\n";
            File.AppendAllText(filePath, commands);

        }

        //reset printer
        File.AppendAllText(filePath, string.Format(ResetLines, Clean(_filamentAmount - 3), Clean(height + 20)));
    }

    private string GenerateOpenPath(PathD path, bool firstLayer)
    {
        var commands = "";
        for (var i = 0; i < path.Count; i++)
        {
            if (i == 0)
            {
                //move to the first point
                commands += string.Format(MoveCommand, Speed, Clean(path[i].x + Settings.SquareSize),
                        Clean(path[i].y + Settings.SquareSize));
                
                // reset the extrusion
                commands += ExtrudeFilament(ExtDist);
                continue;
            }
            
            var lenght = CalcLenght(path[i], path[i - 1]);
            _filamentAmount += CalcFill(lenght);
            if (firstLayer)
            {
                commands += string.Format(PrintCommand, Clean(0.5 * Speed), Clean(path[i].x + Settings.SquareSize),
                        Clean(path[i].y + Settings.SquareSize), Clean(_filamentAmount));
            }
            else
            {
                commands += string.Format(PrintCommand, Speed, Clean(path[i].x + Settings.SquareSize),
                        Clean(path[i].y + Settings.SquareSize), Clean(_filamentAmount));
            }
        }
        commands += ExtrudeFilament(-ExtDist);
        return commands;
    }

    private string GenerateClosedPath(PathD path, bool firstLayer)
    {
        var commands = "";
        for (var i = 0; i <= path.Count + 1; i++)
        {
            if (i == 0)
            {
                //move to the first point
                commands += string.Format(MoveCommand, Speed, Clean(path[i].x + Settings.SquareSize),
                        Clean(path[i].y + Settings.SquareSize));
                
                // reset the extrusion
                commands += ExtrudeFilament(ExtDist);
                continue;
            }
            
            var lenght = CalcLenght(path[i % path.Count], path[(i - 1) % path.Count]);
            _filamentAmount += CalcFill(lenght);
            if (firstLayer)
            {
                commands += string.Format(PrintCommand, Clean(0.5 * Speed ), Clean(path[i % path.Count].x + Settings.SquareSize),
                        Clean(path[i % path.Count].y + Settings.SquareSize), Clean(_filamentAmount));
            }
            else
            {
                commands += string.Format(PrintCommand, Speed, Clean(path[i % path.Count].x + Settings.SquareSize),
                        Clean(path[i % path.Count].y + Settings.SquareSize), Clean(_filamentAmount));
            }
        }
        commands += ExtrudeFilament(-ExtDist);
        return commands;
    }
    private static string Clean(double value)
    {
        return value.ToString(System.Globalization.CultureInfo.InvariantCulture);
    }

    private static double CalcLenght(PointD point, PointD prevPoint)
    {
        return Math.Sqrt(Math.Pow(prevPoint.x - point.x, 2.0) + Math.Pow(prevPoint.y - point.y, 2.0));
    }
    
    private static double CalcFill(double length)
    {
        return (Settings.LayerHeight * Settings.NozzleWidth * length) / (double.Pow(FilamentDia / 2, 2) * double.Pi);
    }

    private string ExtrudeFilament(double amount)
    {
        _filamentAmount += amount;
        return string.Format(ExtrudeCommand, Speed, Clean(_filamentAmount));
    }
}
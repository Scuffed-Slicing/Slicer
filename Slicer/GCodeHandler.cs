using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Clipper2Lib;

namespace Slicer;

public class GCodeHandler
{
    private string[] _setuplines =
    // {
    //     "M140 S60 ;bed Temp",
    //     "M190 S60 ;wait for bed Temp",
    //     "M104 S200 ;nozzle Temp",
    //     "M109 S200 ;wait for nozzle Temp",
    //     "M82 ;absolute extrusion mode",
    //     "G28 ;Home all axes",
    //     "G92 E0 r ;reset extruder",
    //     "G1 Z2.0 F3000 ;move up to not scrape bed",
    //     ";-----------------------TestLine-------------------",
    //     "G1 X0.1 Y20 Z0.3 F5000.0",
    //     "G1 X0.1 Y200 z0.3 F1500.0 E15",
    //     "G1 X0.4 Y200 z0.3 F1500.0 ",
    //     "G1 X0.4 Y20 z0.3 F1500.0 E15",
    //     ";-----------------------DoneWithTestLine-------------------",
    //     "G92 E0 r ;reset extruder",
    //     "G92 E0 r ;reset extruder",
    //     "G1 F2400 E-5; retractfillemant abit",
    //     "M107 ;Turn fan off for first layer",
    //     ";-----------------------SetupDone-------------------\n\n",
    // };
    {
        "M140 S60",
        "M105",
        "M190 S60",
        "M104 S200",
        "M82 ;absolute extrusion mode",
        "M220 S100 ;Reset Feedrate",
        "M221 S100 ;Reset Flowrate",

        "G28 ;Home",

        "G92 E0 ;Reset Extruder",
        "G1 Z2.0 F3000 ;Move Z Axis up",
        "G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position",
        "M109 S200.000000",
        "G1 X10.1 Y145.0 Z0.28 F1500.0 E15 ;Draw the first line",
        "G1 X10.4 Y145.0 Z0.28 F5000.0 ;Move to side a little",
        "G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line",
        "G92 E0  ;Reset Extruder",
        "G1 E-1.0000 F1800 ;Retract a bit",
        "G1 Z0.2 F3000 ;Move Z Axis up",
        "G1 E0.0000 F1800",
        "G92 E0",
        "G92 E0",
    };

    
    string[] _resetLines = {
        ";-----------------------PrintDone-------------------\n\n",
        "M140 S0 ;bed Temp",
        "M107 ;fan off",
        "M220 S100 ; reset speed overwrite to 100%",
        "M221 S100 ; reset sextrude fctor overwrite to 100%",
        "G90 ; coordinates to reltive",
        "G1 F1800 E-3 ;retract fillament 3 mm",
        "G1 F3000 Z20 ; move up 20 mm",
        "G90 ;coordts to absolute",
        "G1 X0 Y235 F1000 ; move to front of heatbed",
        "M107 ;fan off",
        "84 ;Disable stepper motors",
        "M82 ;absolute extrusion mode",
        "G1 F1500 E5",

        ";-----------------------ResetDone-------------------\n\n"

    };

    private double _filamentAmount = -1;
    double prevX = -1;
    double prevY = -1;
    private void GenerateSlice(PathD p, string loc, bool first,double offset, double nozzleWidth){
        // File.AppendAllText(loc, "G92 E0  ;Reset Extruder");
        // File.AppendAllText(loc, "G1 F1500 E5");
        //         double fillemantAmount = 1;
        // double prevX = -1;
        // double prevY = -1;
        
        _filamentAmount += 1;
        File.AppendAllText(loc, "G1 F1500 E" + _filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture)+"\n");
        
        for (int i = 0; i < p.Count; i++)
        {   
            if(prevX!= -1 && prevY != -1)
            {
                var l = Math.Sqrt(Math.Pow(prevX - p[i].x, 2.0) + Math.Pow(prevY - p[i].y, 2.0));
                _filamentAmount += nozzleWidth / 2 * nozzleWidth * l / (1.75 / 2 * 1.75 / 2 * Math.PI);
            }

            // if(first){
            //     File.AppendAllText(loc, "G1 F1500 X" +(p[i].x + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " Y" +(p[i].y + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) +"; move to path start point\n");// first move
            //     first = false;
            // }                        
            // else{
                File.AppendAllText(loc, "G1 X" +(p[i].x + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " Y" + (p[i].y + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " E" +_filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture) + " ; move to next point\n");// make move

            // }
            prevX = p[i].x;
            prevY = p[i].y;
            // Console.WriteLine(p[i].ToString());
        }
        _filamentAmount -= 1;
        File.AppendAllText(loc, "G1 F1500 E" + _filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture)+"\n");
    }
    private void GenerateFill(PathD p, string loc, bool first,double offset, double nozzleWidth){
        //mb l needs to go +1
        // double lenght = 0;
        // File.AppendAllText(loc, "G92 E0  ;Reset Extruder");
        // File.AppendAllText(loc, "G1 F1500 E5");
        //         double fillemantAmount = 1;
        // double prevX = -1;
        // double prevY = -1;
        

        
        for (int i = 0; i < p.Count; i++)
        {   
            
            if(i == 0){
                File.AppendAllText(loc, "G1 F1500 X" +(p[i].x + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " Y" +(p[i].y + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) +"; move to path start point\n");// first move
                _filamentAmount += 1;
                File.AppendAllText(loc, "G1 F1500 E" + _filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture)+"\n");
            }
            
            else{
                var lenght = Math.Sqrt(Math.Pow(prevX - p[i].x, 2.0) + Math.Pow(prevY - p[i].y, 2.0));
                _filamentAmount += nozzleWidth / 2 * nozzleWidth * lenght / (1.75 / 2 * 1.75 / 2 * Math.PI);
                File.AppendAllText(loc, "G1 X" +(p[i].x + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " Y" + (p[i].y + offset).ToString(System.Globalization.CultureInfo.InvariantCulture) + " E" + _filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture) + " ; move to next point\n");// make move
            }
            
            prevX = p[i].x;
            prevY = p[i].y;
            // Console.WriteLine(p[i].ToString());
        }

        _filamentAmount -= 1;
        File.AppendAllText(loc, "G1 F1500 E" + _filamentAmount.ToString(System.Globalization.CultureInfo.InvariantCulture)+"\n");
    }


        public void GenerateGCodeModel(List<PathsD> model, List<PathsD> roofs, List<PathsD> infill,double NozzleWidth, double offset, double LayerHeight){
            var loc = "../../../output.gcode";
            File.Delete(loc);
            //do setup of printer
            File.WriteAllLines(loc, _setuplines);
            var counter = 0;
            
            //for each layer
            for (var i = 0; i < model.Count; i++)
            {
                var first = true;
                
                foreach(var p  in model[i]){
                    //generate the slice
                    p.Add(p.First());
                    GenerateSlice(p, loc, first, offset, NozzleWidth);
                    first = false;
                }
                
                first = true;
                foreach(var p  in roofs[i]){
                    //generate the slice
                    p.Add(p.First());
                    GenerateSlice(p, loc, first, offset, NozzleWidth);
                    first = false;
                }
                
                first = true;
                foreach(var p  in infill[i]){
                    //generate the fill
                    GenerateFill(p, loc, first, offset, NozzleWidth);
                    first = false;
                }
                
                File.AppendAllText(loc, "G1 Z" + counter * LayerHeight +"; move to next Layer\n");
                File.AppendAllText(loc,";-----------------------LayerDone-------------------\n\n");
                counter++;             
            }
            //reset printer
            File.AppendAllLines(loc, _resetLines);
        }


        public void GenerateGCodeSlice(PathsD figure, PathsD infill, double nozzleWidth, double offset){
            var loc = "../../../output.gcode";
            File.Delete(loc);
            File.WriteAllLines(loc, _setuplines);


            foreach(var p in figure){
                p.Add(p.First());
                GenerateSlice(p, loc, true, offset, nozzleWidth);
                
            }

            foreach (var p in infill)
            {
                GenerateFill(p, loc, true, offset, nozzleWidth);
            }
            
            // File.AppendAllText(loc, "G1 Z" + layer*nozzlW +" ; move to next Layer\n");
            
            File.AppendAllText(loc,";-----------------------LayerDone-------------------\n\n");
            File.AppendAllLines(loc, _resetLines);
        }
        
        public void GenerateInfillGCodeSlice(PathsD TheWay, double NozzleWidth, double offset){
            var loc = "../../../output.gcode";
            File.Delete(loc);
            File.WriteAllLines(loc, _setuplines);


            foreach(var p in TheWay){
                p.Add(p.First());
                GenerateFill(p, loc, true,offset, NozzleWidth);
            }
            
            // File.AppendAllText(loc, "G1 Z" + layer*nozzlW +" ; move to next Layer\n");
            File.AppendAllText(loc,";-----------------------LayerDone-------------------\n\n");
            File.AppendAllLines(loc, _resetLines);
        }
}
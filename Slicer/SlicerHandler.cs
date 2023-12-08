using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Media3D;
using System.Windows.Shapes;
using Clipper2Lib;

namespace Slicer;

public static class SlicerHandler
{
    public static List<PathsD> SliceAll(MeshGeometry3D mesh, double nozzleWidth, double layerHeight, int shells)
    {
        double height = 0;
        var maxHeight = ModelHandler.GetMeshHeight(mesh);
        var figure = new List<PathsD>();

        while (height <= maxHeight)
        {
            height = double.Round(height, 2);
            var slice = FindIntersectionPointsAtHeight(mesh, height + double.Epsilon);
            slice = ConnectPaths(slice);
            
            slice = ErodeAndShell(slice, nozzleWidth, shells);
            if (slice.Count > 0)
            {
                figure.Add(slice);
            }
            
            height += layerHeight;
        }

        return figure;
    }

    public static List<PathsD> GenerateAllRoofs(List<PathsD> figure, double nozzleWidth, int shells)
    {
        var roofs = new List<PathsD>();
        for (int i = 0; i < figure.Count; i++)
        {
            if (i < 2 || i > figure.Count - 2 - 1)
            {
                roofs.Add(GenerateRoof(figure[i], new List<PathsD>(), new List<PathsD>(), nozzleWidth, shells));
                continue;
            }

            var top = new List<PathsD> { figure[i + 2], figure[i + 1] };
            var bottom = new List<PathsD> { figure[i - 2], figure[i - 1] };
            roofs.Add(GenerateRoof(figure[i], top, bottom, nozzleWidth, shells));
        }
        return roofs;
    }
    public static PathsD GenerateRoof(PathsD slice, List<PathsD> top, List<PathsD> bottom, double nozzleWidth, int shells)
    {
        if (top.Count == 0 || bottom.Count == 0)
        {
            return Clipper.SimplifyPaths(GenRoofPattern(slice, nozzleWidth, shells), 0.025, true);
        }

        var clip = new ClipperD();
        var roof = GenRoofPattern(slice, nozzleWidth, shells);

        var top1 = Clipper.Difference(roof, top[0], FillRule.NonZero);
        var top2 = Clipper.Difference(roof, top[1], FillRule.NonZero);
        
        var bot1 = Clipper.Difference(roof, bottom[0], FillRule.NonZero);
        var bot2 = Clipper.Difference(roof, bottom[1], FillRule.NonZero);
        
        clip.AddSubject(top1);
        clip.AddSubject(top2);
        clip.AddSubject(bot1);
        clip.AddSubject(bot2);

        clip.Execute(ClipType.Union, FillRule.NonZero, roof);
        var eroded = Clipper.InflatePaths(roof, - nozzleWidth * (shells) , JoinType.Miter, EndType.Polygon);
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - nozzleWidth , JoinType.Miter, EndType.Polygon);
            foreach (var path in newSlice)
            {
                roof.Add(path);
            }
            eroded = newSlice;
        }
        
        return Clipper.SimplifyPaths(roof, 0.025, true);
    }

    private static PathsD GenRoofPattern(PathsD slice, double nozzleWidth, int shells)
    {
        var roofs = new PathsD();
        var eroded = Clipper.InflatePaths(slice, -nozzleWidth * (shells) , JoinType.Miter, EndType.Polygon);
        
        foreach (var path in eroded)
        {
            roofs.Add(path);
        }
        
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - nozzleWidth , JoinType.Miter, EndType.Polygon);
            foreach (var path in newSlice)
            {
                roofs.Add(path);
            }
            eroded = newSlice;
        }

        return roofs;
    } 
    public static List<PathsD> GenerateAllInfill(List<PathsD> figure, List<PathsD> roofs, double fillPercent, double squareSize, double nozzleWidth, int shells)
    {
        var infills = new List<PathsD>();

        for (int i = 0; i < figure.Count; i++)
        {
            var fill = GenerateInfill(fillPercent, squareSize, nozzleWidth);
            
            var eroded = Clipper.InflatePaths(figure[i], - nozzleWidth * (shells) , JoinType.Miter, EndType.Polygon);
            ClipperD clip = new ClipperD();
            ClipperD clip2 = new ClipperD();

            clip.AddOpenSubject(fill);
            clip.AddClip(eroded);
            
            PathsD solThrow = new PathsD();
            PathsD sol = new PathsD();
            
            clip.Execute(ClipType.Intersection, FillRule.NonZero, solThrow, sol);
            
            clip2.AddOpenSubject(sol);
            clip2.AddClip(roofs[i]);

            clip2.Execute(ClipType.Difference, FillRule.NonZero, solThrow, sol);
            infills.Add(sol);
        }

        foreach (var path in infills[0])
        {
            writePath(path);
        }
        
        
        return infills;
    }
    //TODO: (low prio) add a calc for an infill percent
    public static PathsD GenerateInfill(double fillPercent, double squareSize, double nozzleWidth)
    {
        double spacing = 5;
        PathsD pattern = new PathsD();
        
        
        PointD centre = new PointD(-squareSize / 2, -squareSize / 2);
        PointD end = new PointD(squareSize / 2, squareSize / 2);
        
        while (centre.x <= end.x)
        {
            PointD topLine = new PointD(centre.x - squareSize / 2, centre.y + squareSize / 2);
            PointD botLine = new PointD(centre.x + squareSize / 2, centre.y - squareSize / 2);
            pattern.Add(new PathD{topLine, botLine});

            centre.x += spacing;
            centre.y += spacing;
        }
        
        centre = new PointD(-squareSize / 2, squareSize / 2);
        end = new PointD(squareSize / 2, -squareSize / 2);
        
        while (centre.x <= end.x)
        {
            PointD topLine = new PointD(centre.x + squareSize / 2, centre.y + squareSize / 2);
            PointD botLine = new PointD(centre.x - squareSize / 2, centre.y - squareSize / 2);
            pattern.Add(new PathD{topLine, botLine});

            centre.x += spacing;
            centre.y -= spacing;
        }

        return pattern;
    }
    public static PathsD FindIntersectionPointsAtHeight(MeshGeometry3D model, double sliceHeight)
    {
        var output = new PathsD();
        for (var i = 0; i < model.TriangleIndices.Count; i += 3)
        {
            var tri = new List<Point3D>();
            tri.Add(model.Positions[model.TriangleIndices[i]]);
            tri.Add(model.Positions[model.TriangleIndices[i + 1]]);
            tri.Add(model.Positions[model.TriangleIndices[i + 2]]);

            var pointsOnHeight = new List<Point3D>();
            //this loop makes each triangle point combo go once (1-0, 2-0. 2-1)
            for (var j = 0; j < 3; j++)
            for (var k = 0; k < j; k++)
                /* check if the slice height is in between both points
                 * the slicing plane cant intersect with a vertex because epsilon gets added to it
                 */
                if (double.Max(double.Round(tri[j].Z, 10), double.Round(tri[k].Z, 10)) > sliceHeight &&
                    double.Min(double.Round(tri[j].Z, 10), double.Round(tri[k].Z, 10)) < sliceHeight)
                    pointsOnHeight.Add(FindIntersectionPoint(tri[j], tri[k], sliceHeight));

            //verbind alle punten die indezer driehoek gevonden zijn
            var convPoints = new List<PointD>();
            foreach (var point in pointsOnHeight) convPoints.Add(new PointD(point.X, point.Y));

            //empty groups and single points can be ignored
            if (convPoints.Count < 2) continue;
            
            // // sometimes a line that is the same point twice gets formed
            if (convPoints[0].x == convPoints[1].x && convPoints[0].y == convPoints[1].y) continue;
            
            var temp = new PathD(convPoints);
            output.Add(temp);
            // output.Add(Clipper.SimplifyPath(temp, 0.025));
        }

        return output;
    }

    private static Point3D FindIntersectionPoint(Point3D p1, Point3D p2, double height)
    {
        //rand waarde waar z1 en z2 gelijk zijn uitgehaald door voorgaande code
        var t = (height - p1.Z) / (p2.Z - p1.Z);
        
        var x1 = p1.X;
        var x2 = p2.X;

        var y1 = p1.Y;
        var y2 = p2.Y;

        // return new Point3D(x1 + t * (x2 - x1), y1 + t * (y2 - y1), height);
        return new Point3D(double.Round(x1 + t * (x2 - x1), 10), double.Round(y1 + t * (y2 - y1), 10), height);
    }
    
    private static PathsD ConnectPaths(PathsD paths)
    {
        var connections = new Dictionary<PointD, PathD>();
        foreach (var path in paths)
        {
            var connected = Connect(connections, path);
            connections.Add(connected.First(), connected);
        }


        PathsD test = new PathsD ( connections.Values );

        return test;
    }
    
    private static PathD Connect(Dictionary<PointD, PathD> connections, PathD path)
    {
        if (connections.ContainsKey(path.Last()))
        {
            var tail = connections[path.Last()];
            connections.Remove(path.Last());
            
            for (var i = 1; i < tail.Count; i++) path.Add(tail[i]);
            return Connect(connections, path);
        }
        
        if (connections.ContainsKey(path.First()))
        {
            var tail = connections[path.First()];
            connections.Remove(path.First());
            
            //this one took me an embarrassingly long time to realise
            path.Reverse();
            
            for (var i = 1; i < tail.Count; i++) path.Add(tail[i]);
            return Connect(connections, path);
        }
        
        
        return path;
    }

    static void writePath(PathD path)
    {
        Console.WriteLine("==================================================");
        foreach (var point in path)
        {
            Console.WriteLine(point.x + ", " + point.y);
        }
        Console.WriteLine("==================================================");
    }
    public static PathsD ErodeAndShell(PathsD slice, double nozzleWidth, int nrShells)
    {
        var eroded = Clipper.SimplifyPaths(Clipper.InflatePaths(slice, -nozzleWidth / 2, JoinType.Miter, EndType.Polygon), 0.025);
        
        PathsD output = new PathsD();
        for(int i = 0; i < nrShells; i++){
            PathsD temp = Clipper.SimplifyPaths(Clipper.InflatePaths(eroded, - nozzleWidth * i, JoinType.Miter, EndType.Polygon), 0.025);
            foreach(var path in temp){
                output.Add(path);
            }
        }
        return output;
    }
}
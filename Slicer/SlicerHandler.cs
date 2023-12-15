using System;
using System.Collections.Generic;
using System.Linq;
using System.Printing;
using System.Windows.Media.Media3D;
using System.Windows.Shapes;
using Clipper2Lib;

namespace Slicer;

public static class SlicerHandler
{
    private const double MiterLimit = double.Epsilon;

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
        int numRoofs = 4;
        var roofs = new List<PathsD>();
        for (int i = 0; i < figure.Count; i++)
        {
            if (i < numRoofs || i > figure.Count - numRoofs - 1)
            {
                roofs.Add(GenerateRoof(figure[i], new List<PathsD>(), new List<PathsD>(), nozzleWidth, shells));
                continue;
            }
            
            var top = new List<PathsD>();
            var bottom = new List<PathsD>();
            for (int j = 1; j <= numRoofs; j++)
            {
                top.Add(figure[i + j]);
                bottom.Add(figure[i - j]);
            }

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

        for (int i = 0; i < top.Count; i++)
        {
            clip.AddSubject(Clipper.Difference(roof, top[i], FillRule.NonZero));
            clip.AddSubject(Clipper.Difference(roof, bottom[i], FillRule.NonZero));
        }
        
        clip.Execute(ClipType.Union, FillRule.NonZero, roof);
        
        var eroded = roof;
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - nozzleWidth , JoinType.Round, EndType.Polygon);
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
        var eroded = Clipper.InflatePaths(slice, -nozzleWidth * (shells) , JoinType.Round, EndType.Polygon);
        
        foreach (var path in eroded)
        {
            roofs.Add(path);
        }
        
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - nozzleWidth , JoinType.Round, EndType.Polygon);
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
            
            var eroded = Clipper.InflatePaths(figure[i], - nozzleWidth * (shells) , JoinType.Round, EndType.Polygon);
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
        PathsD pattern = new PathsD();
        if (fillPercent <= 0.0001) return pattern;
        double spacing = (1 / fillPercent) * nozzleWidth * 2;

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
            {
                for (var k = 0; k < j; k++)
                {
                    /* check if the slice height is in between both points
                     * the slicing plane cant intersect with a vertex because epsilon gets added to it
                     */
                    if (double.Max(double.Round(tri[j].Z, 5), double.Round(tri[k].Z, 5)) > sliceHeight &&
                        double.Min(double.Round(tri[j].Z, 5), double.Round(tri[k].Z, 5)) < sliceHeight)
                        pointsOnHeight.Add(FindIntersectionPoint(tri[j], tri[k], sliceHeight));
                }
            }


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
        return new Point3D(double.Round(x1 + t * (x2 - x1), 5), double.Round(y1 + t * (y2 - y1), 5), height);
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
        var eroded = Clipper.SimplifyPaths(Clipper.InflatePaths(slice, -nozzleWidth / 2, JoinType.Round, EndType.Polygon), 0.025);
        
        PathsD output = new PathsD();
        for(int i = 0; i < nrShells; i++){
            PathsD temp = Clipper.SimplifyPaths(Clipper.InflatePaths(eroded, - nozzleWidth * i, JoinType.Round, EndType.Polygon), 0.025);
            foreach(var path in temp){
                output.Add(path);
            }
        }
        return output;
    }
     public static List<PathsD> GenerateSupports(List<PathsD> model, double nozzleWidth){
    List<PathsD> result = new List<PathsD>();


    //go over model top to bottom 
    //difference between prev and next layer = support needed
    //add support + current layer together in temp use this for next one
    //diff between temp and current layer = support 
    //repeat
    PathsD prevAndSup = model[model.Count - 1];
    Console.WriteLine(model.Count);
    for(var i = model.Count-1; i >= 0; i--) {
        //check for 45 degree angle cus self supporting by inflating the layer with the nozzle width zo 45degrees would be a straight
        
        PathsD supports = Clipper.Difference(prevAndSup,Clipper.InflatePaths(model[i], nozzleWidth, JoinType.Round, EndType.Polygon),FillRule.EvenOdd);
        prevAndSup = Clipper.Union(model[i],supports,FillRule.NonZero);

        //offset so it is ligtlky connected to model
        result.Add(Clipper.InflatePaths(supports, - nozzleWidth, JoinType.Round, EndType.Polygon));

    }
    //TODO kijken als verticaal afbreebaakr is
    //check if output needs to be reversed
    result.Reverse();
    return result;
 }
}
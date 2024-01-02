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
    
    public static List<PathsD> SliceAll(MeshGeometry3D mesh)
    {
        var height = 0.0;
        var maxHeight = ModelHandler.GetMeshHeight(mesh);
        var figure = new List<PathsD>();

        while (height <= maxHeight)
        {
            height = double.Round(height, 2);
            var slice = FindIntersectionPointsAtHeight(mesh, height + double.Epsilon);
            slice = ConnectPaths(slice);
            
            slice = ErodeAndShell(slice);
            height += Settings.LayerHeight;

            if (slice.Count == 0)
            {
                continue;
            }
            figure.Add(slice);

        }

        return figure;
    }

    public static List<PathsD> GenerateAllRoofs(List<PathsD> figure)
    {
        var roofs = new List<PathsD>();
        for (int i = 0; i < figure.Count; i++)
        {
            if (i < Settings.ShellCount || i > figure.Count - Settings.ShellCount - 1)
            {
                roofs.Add(GenerateRoof(figure[i], new List<PathsD>(), new List<PathsD>()));
                continue;
            }
            
            var top = new List<PathsD>();
            var bottom = new List<PathsD>();
            for (int j = 1; j <= Settings.ShellCount; j++)
            {
                top.Add(figure[i + j]);
                bottom.Add(figure[i - j]);
            }

            roofs.Add(GenerateRoof(figure[i], top, bottom));
        }   
        return roofs;
    }
    public static PathsD GenerateRoof(PathsD slice, List<PathsD> top, List<PathsD> bottom)
    {
        PathsD roof;

        if (top.Count == 0 || bottom.Count == 0)
        {
            roof = GenRoofPattern(slice);
            return Clipper.SimplifyPaths(roof, 0.025);
        }

        var clip = new ClipperD();
        roof = GenRoofPattern(slice);

        for (int i = 0; i < top.Count; i++)
        {
            clip.AddSubject(Clipper.Difference(roof, top[i], FillRule.NonZero));
            clip.AddSubject(Clipper.Difference(roof, bottom[i], FillRule.NonZero));
        }
        
        clip.Execute(ClipType.Union, FillRule.NonZero, roof);
        
        var eroded = roof;
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - Settings.NozzleWidth, JoinType.Round, EndType.Polygon);
            foreach (var path in newSlice)
            {
                roof.Add(path);
            }
            eroded = newSlice;
        }

        return Clipper.SimplifyPaths(roof, 0.025);
    }

    private static PathsD GenRoofPattern(PathsD slice)
    {
        var roofs = new PathsD();
        var eroded = Clipper.InflatePaths(slice, -Settings.NozzleWidth * (Settings.ShellCount) , JoinType.Round, EndType.Polygon);
        
        foreach (var path in eroded)
        {
            roofs.Add(path);
        }
        
        while (eroded.Count > 0)
        {
            var newSlice = Clipper.InflatePaths(eroded, - Settings.NozzleWidth , JoinType.Round, EndType.Polygon);
            foreach (var path in newSlice)
            {
                roofs.Add(path);
            }
            eroded = newSlice;
        }

        return roofs;
    } 
    public static List<PathsD> GenerateAllInfill(List<PathsD> figure, List<PathsD> roofs, double fillPercent)
    {
        var infills = new List<PathsD>();

        for (int i = 0; i < figure.Count; i++)
        {
            var fill = GenerateInfill(fillPercent);
            
            var eroded = Clipper.InflatePaths(figure[i], - Settings.NozzleWidth * (Settings.ShellCount),
                JoinType.Round, EndType.Polygon);
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
        
        return infills;
    }
    public static PathsD GenerateInfill(double fillPercent)
    {
        PathsD pattern = new PathsD();
        if (fillPercent <= 0.0001) return pattern;
        double spacing = (1 / fillPercent) * Settings.NozzleWidth * 2;

        PointD centre = new PointD(-Settings.SquareSize / 2, -Settings.SquareSize / 2);
        PointD end = new PointD(Settings.SquareSize / 2, Settings.SquareSize / 2);
        
        while (centre.x <= end.x)
        {
            PointD topLine = new PointD(centre.x - Settings.SquareSize / 2, centre.y + Settings.SquareSize / 2);
            PointD botLine = new PointD(centre.x + Settings.SquareSize / 2, centre.y - Settings.SquareSize / 2);
            pattern.Add(new PathD{topLine, botLine});

            centre.x += spacing;
            centre.y += spacing;
        }
        
        centre = new PointD(-Settings.SquareSize / 2, Settings.SquareSize / 2);
        end = new PointD(Settings.SquareSize / 2, -Settings.SquareSize / 2);
        
        while (centre.x <= end.x)
        {
            PointD topLine = new PointD(centre.x + Settings.SquareSize / 2, centre.y + Settings.SquareSize / 2);
            PointD botLine = new PointD(centre.x - Settings.SquareSize / 2, centre.y - Settings.SquareSize / 2);
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
            
            // sometimes a line that is the same point twice gets formed
            if (convPoints[0].x == convPoints[1].x && convPoints[0].y == convPoints[1].y) continue;
            
            var temp = new PathD(convPoints);
            output.Add(temp);
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

        return new Point3D(double.Round(x1 + t * (x2 - x1), 10), double.Round(y1 + t * (y2 - y1), 10), height);
    }    
    private static PathsD ConnectPathsSlower(PathsD paths)
    {
        if (paths.Count == 0) return paths;
        var connections = new List<PathD>();
        bool didCon = true;
        while(didCon)
        {
            didCon = false;
            var path = paths.First();
            paths.RemoveAt(0);
            
            (var connected, didCon) = ConnectSlower(paths, path);
            paths.Add(connected);
        }
        

        return paths;
    }
     private static (PathD, bool) ConnectSlower(PathsD connections, PathD path)
     {
         int firstInd = 0;
         bool firstFront = false;
         double firstDist = 0;
         (firstInd, firstFront, firstDist) = ClosestIndex(path.First(), connections);
         
         int lastInd = 0;
         bool lastFront = false;
         double lastDist = 0;
         (lastInd, lastFront, lastDist) = ClosestIndex(path.Last(), connections);
        
         if(double.Min(firstDist, lastDist) > 0.001) return (path, false);
         
         bool firstClosest = firstDist <= lastDist;
        if (firstClosest && !firstFront)
        {
            var head = connections[firstInd];
            connections.RemoveAt(firstInd);

            var midX = (head.Last().x + path.First().x) / 2;
            var midY = (head.Last().y + path.First().y) / 2;
            
            head.RemoveAt(head.Count - 1);
            head.Add(new PointD(midX, midY));
            
            for (var j = 1; j < path.Count; j++) head.Add(path[j]);
            return (head, true);
        }
            
        if (!firstClosest && !lastFront)
        {
            var head = connections[lastInd];
            connections.RemoveAt(lastInd);
        
            //this one took me an embarrassingly long time to realise
            path.Reverse();
            
            var midX = (head.Last().x + path.First().x) / 2;
            var midY = (head.Last().y + path.First().y) / 2;
        
            head.RemoveAt(head.Count - 1);
            head.Add(new PointD(midX, midY));
            
            for (var j = 1; j < path.Count; j++) head.Add(path[j]);
            return (head, true);

        }
        if (firstClosest && firstFront)
        {
            var tail = connections[firstInd];
            connections.RemoveAt(firstInd);
            
            path.Reverse();
            
            var midX = (tail.First().x + path.Last().x) / 2;
            var midY = (tail.First().y + path.Last().y) / 2;
            
            path.RemoveAt(path.Count - 1);
            path.Add(new PointD(midX, midY));
            
            for (var j = 1; j < tail.Count; j++) path.Add(tail[j]);
            return (path, true);

        }

        if (!firstClosest && lastFront)
        {
            var tail = connections[lastInd];
            connections.RemoveAt(lastInd);

            var midX = (tail.First().x + path.Last().x) / 2;
            var midY = (tail.First().y + path.Last().y) / 2;

            path.RemoveAt(path.Count - 1);
            path.Add(new PointD(midX, midY));

            for (var j = 1; j < tail.Count; j++) path.Add(tail[j]);
            return (path, true);
        }

        return (path, false);
    }

     private static (int, bool, double) ClosestIndex(PointD point, List<PathD> paths)
     {
         double closest = double.MaxValue;
         int closestInd = -1;
         bool front = true;

         for (int i = 0; i < paths.Count; i++)
         {
             var a2 = Math.Pow(point.x - paths[i].First().x, 2);
             var b2 = Math.Pow(point.y - paths[i].First().y, 2);
             var dist = Math.Sqrt(a2 + b2);
             if (dist < closest)
             {
                 closestInd = i;
                 front = true;
                 closest = dist;
             }
             
             a2 = Math.Pow(point.x - paths[i].Last().x, 2);
             b2 = Math.Pow(point.y - paths[i].Last().y, 2);
             dist = Math.Sqrt(a2 + b2);
             if (dist < closest)
             {
                 closestInd = i;
                 front = false;
                 closest = dist;
             }
         }

         return (closestInd, front, closest);
     }
    private static PathsD ConnectPathsSlow(PathsD paths)
    {
        var connections = new List<PathD>();
        foreach (var path in paths)
        {
            var connected = ConnectSlow(connections, path);
            connections.Add(connected);
        }
        
        PathsD test = new PathsD ( connections );

        return test;
    }
    
    private static PathD ConnectSlow(List<PathD> connections, PathD path)
    {
        double eps = double.Pow(10, -8);
        int i = 0;
        while(i < connections.Count)
        {
            if(connections[i].Count == 0) continue;
            
            if ((connections[i].Last().x - eps <= path.First().x && path.First().x  <= connections[i].Last().x + eps)
                && (connections[i].Last().y - eps <= path.First().y && path.First().y  <= connections[i].Last().y + eps))
            {
                var head = connections[i];
                connections.RemoveAt(i);

                var midX = (head.Last().x + path.First().x) / 2;
                var midY = (head.Last().y + path.First().y) / 2;
                
                head.RemoveAt(head.Count - 1);
                head.Add(new PointD(midX, midY));
                
                for (var j = 1; j < path.Count; j++) head.Add(path[j]);
                return ConnectSlow(connections, head);
            }
            if ((connections[i].Last().x - eps <= path.Last().x && path.Last().x  <= connections[i].Last().x + eps)
                 && (connections[i].Last().y - eps <= path.Last().y && path.Last().y  <= connections[i].Last().y + eps))
            {
                var head = connections[i];
                connections.RemoveAt(i);
            
                //this one took me an embarrassingly long time to realise
                path.Reverse();
                
                var midX = (head.Last().x + path.First().x) / 2;
                var midY = (head.Last().y + path.First().y) / 2;
            
                head.RemoveAt(head.Count - 1);
                head.Add(new PointD(midX, midY));
                
                for (var j = 1; j < path.Count; j++) head.Add(path[j]);
                return ConnectSlow(connections, head);
            }
            if ((connections[i].First().x - eps <= path.First().x && path.First().x  <= connections[i].First().x + eps)
                && (connections[i].First().y - eps <= path.First().y && path.First().y  <= connections[i].First().y + eps))
            {
                var tail = connections[i];
                connections.RemoveAt(i);
                
                path.Reverse();
                
                var midX = (tail.First().x + path.Last().x) / 2;
                var midY = (tail.First().y + path.Last().y) / 2;
                
                path.RemoveAt(path.Count - 1);
                path.Add(new PointD(midX, midY));
                
                for (var j = 1; j < tail.Count; j++) path.Add(tail[j]);
                return ConnectSlow(connections, path);
            }
            
            if ((connections[i].First().x - eps <= path.Last().x && path.Last().x  <= connections[i].First().x + eps)
                && (connections[i].First().y - eps <= path.Last().y && path.Last().y  <= connections[i].First().y + eps))
            {
                var tail = connections[i];
                connections.RemoveAt(i);
                
                var midX = (tail.First().x + path.Last().x) / 2;
                var midY = (tail.First().y + path.Last().y) / 2;
                
                path.RemoveAt(path.Count - 1);
                path.Add(new PointD(midX, midY));
                
                for (var j = 1; j < tail.Count; j++) path.Add(tail[j]);
                return ConnectSlow(connections, path);
            }

            i++;
            if(i >= connections.Count) break;
        }
        return path;
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
    public static PathsD ErodeAndShell(PathsD slice)
    {
        var eroded = Clipper.SimplifyPaths(Clipper.InflatePaths(slice, -Settings.NozzleWidth / 2, JoinType.Round, EndType.Polygon), 0.025);
        
        PathsD output = new PathsD();
        for(int i = 0; i < Settings.ShellCount; i++){
            PathsD temp = Clipper.SimplifyPaths(Clipper.InflatePaths(eroded, - Settings.NozzleWidth * i, JoinType.Round, EndType.Polygon), 0.025);
            foreach(var path in temp){
                output.Add(path);
            }
        }
        return output;
    }
    public static List<PathsD> GenerateSupports(List<PathsD> model){
    List<PathsD> result = new List<PathsD>();
    
    
    PathsD prevAndSup = model.Last();
    
    for(var i = model.Count - 1; i >= 0; i--) {

        PathsD supports = Clipper.Difference(prevAndSup,Clipper.InflatePaths(model[i], Settings.NozzleWidth, JoinType.Round, EndType.Polygon),FillRule.EvenOdd);
        prevAndSup = Clipper.Union(model[i],supports,FillRule.NonZero);
        if(i != model.Count - 1)
            supports = Clipper.Difference(supports, model[i + 1], FillRule.NonZero);
        
        if(i != 0)
            supports = Clipper.Difference(supports, model[i - 1], FillRule.NonZero);
        
        //offset so it is ligtlky connected to model
        result.Add(Clipper.InflatePaths(supports, - Settings.NozzleWidth, JoinType.Round, EndType.Polygon));

    }

    result.Reverse();
    return result;
 }
}
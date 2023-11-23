using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Media3D;
using Clipper2Lib;

namespace Slicer;

public static class SlicerHandler
{
    public static List<PathsD> SliceAll(MeshGeometry3D mesh, double nozzleWidth, int shells)
    {
        double height = 0;
        var maxHeight = ModelHandler.GetMeshHeight(mesh);
        var figure = new List<PathsD>();

        while (height <= maxHeight)
        {
            height = double.Round(height, 2);
            var slice = FindIntersectionPointsAtHeight(mesh, height + double.Epsilon);
            slice = connectPaths(slice);
            slice = ErodeAndShell(slice, nozzleWidth, shells);
            figure.Add(slice);
            height += nozzleWidth;
        }

        return figure;
    }

    public static List<PathsD> GenerateAllInfill(List<PathsD> figure, double fillPercent, double squareSize, double nozzleWidth, int shells)
    {
        var infills = new List<PathsD>();
        
        foreach (var slice in figure)
        {
            var fill = GenerateInfill(fillPercent, squareSize, nozzleWidth);
            var eroded = Clipper.InflatePaths(slice, -nozzleWidth * (shells + 0.5), JoinType.Miter, EndType.Polygon);
            ClipperD clip = new ClipperD();
            clip.AddPaths(eroded, PathType.Subject, false);
            clip.AddPaths(fill, PathType.Clip, false);
            
            PathsD sol = new PathsD();
            clip.Execute(ClipType.Intersection, FillRule.NonZero, sol);

            infills.Add(sol);
        }

        return infills;
    }
    public static PathsD GenerateInfill(double fillPercent, double squareSize, double nozzleWidth)
    {
        /* fill-percent is the inverse of the amount of room we need to leave to get said percent
         * and then we divide by root(2) so we can add that nr to the x and y coord
         */
        // double spacing = (double.Pow(fillPercent, -1) * nozzleWidth) / double.RootN(2, 2);
        double spacing = 10;
        double miniOffset = 0.01;
        PathsD pattern = new PathsD();
        PathsD row = new PathsD();
        

        PointD centre = new PointD(-squareSize / 2, -squareSize / 2);
        PointD end = new PointD(squareSize / 2, squareSize / 2);
        
        while (centre.x <= end.x + spacing)
        {
            // PointD tr = new PointD(centre.x + spacing / 2, centre.y + spacing / 2);
            // PointD tl = new PointD(centre.x - spacing / 2, centre.y + spacing / 2);
            // PointD br = new PointD(centre.x + spacing / 2, centre.y - spacing / 2);
            // PointD bl = new PointD(centre.x - spacing / 2, centre.y - spacing / 2);
            //
            // PathD square = new PathD{tr, br, bl, tl};

            PointD t = new PointD(centre.x, centre.y + spacing / 2);
            PointD l = new PointD(centre.x - spacing / 2, centre.y);
            PointD b = new PointD(centre.x, centre.y - spacing / 2);
            PointD r = new PointD(centre.x + spacing / 2, centre.y );
            
            PathD square = new PathD{t, l, b, r};

            row.Add(square);
            
            centre.x += spacing + miniOffset;
        }
        
        foreach (var square in row)
        {
            pattern.Add(square);
        }

        // return pattern;

        var linenr = 1;
        centre.y += (spacing + miniOffset);
        while (centre.y <= end.y + spacing)
        {
            PathsD copyRow = new PathsD();
            for (int i = 0; i < row.Count; i++)
            {
                var squareCpy = new PathD();

                foreach (var square in row[i])
                {
                    squareCpy.Add(new PointD(square.x, square.y + (spacing + miniOffset) * linenr));
                }
                
                copyRow.Add(squareCpy);
            }
            
            foreach (var square in copyRow)
            {
                pattern.Add(square);
            }

            linenr++;
            centre.y += spacing + miniOffset;
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
                if (double.Max(double.Round(tri[j].Z, 4), double.Round(tri[k].Z, 4)) > sliceHeight &&
                    double.Min(double.Round(tri[j].Z, 4), double.Round(tri[k].Z, 4)) < sliceHeight)
                    pointsOnHeight.Add(FindIntersectionPoint(tri[j], tri[k], sliceHeight));

            //verbind alle punten die indezer driehoek gevonden zijn
            var convPoints = new List<PointD>();
            foreach (var point in pointsOnHeight) convPoints.Add(new PointD(point.X, point.Y));

            //empty groups and single points can be ignored
            if (convPoints.Count < 2) continue;
            
            // sometimes a line that is the same point twice gets formed
            if (convPoints[0].x == convPoints[1].x && convPoints[0].y == convPoints[1].y) continue;
         
            output.Add(new PathD(convPoints));
        }

        return output;
    }

    private static Point3D FindIntersectionPoint(Point3D p1, Point3D p2, double height)
    {
        //rand waarde waar z1 en z2 gelijk zijn uitgehaald door voorgaande code
        var t = (height - p1.Z) / (p2.Z - p1.Z);

        //convert to float and add a miniscule value to height so the plane never intersects with a point
        var x1 = (float)p1.X;
        var x2 = (float)p2.X;

        var y1 = (float)p1.Y;
        var y2 = (float)p2.Y;

        return new Point3D(double.Round(x1 + t * (x2 - x1), 2), double.Round(y1 + t * (y2 - y1), 2), height);
    }
    
    private static PathsD connectPaths(PathsD paths)
    {
        var connections = new Dictionary<PointD, PathD>();
        foreach (var path in paths)
        {
            var connected = Connect(connections, path);
            connections.Add(connected.First(), connected);
        }

        return new PathsD(connections.Values);
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
        Console.WriteLine("eroding");
        var eroded = Clipper.InflatePaths(slice, -nozzleWidth / 2, JoinType.Miter, EndType.Polygon);
        
        PathsD output = new PathsD();
        for(int i = 0; i < nrShells; i++){
            PathsD temp = Clipper.InflatePaths(eroded, -nozzleWidth * i, JoinType.Miter, EndType.Polygon);
            foreach(var path in temp){
                output.Add(path);
            }
        }
        
        return output;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Media3D;
using Clipper2Lib;

namespace Slicer;

public static class SlicerHandler
{
    public static List<PathsD> SliceAll(MeshGeometry3D mesh, double nozzleWidth)
    {
        double height = 0;
        var maxHeight = ModelHandler.GetMeshHeight(mesh);
        var figure = new List<PathsD>();

        while (height <= maxHeight)
        {
            height = double.Round(height, 2);
            var test = FindIntersectionPointsAtHeight(mesh, height + double.Epsilon);
            Console.Out.WriteLine(height);
            figure.Add(connectPaths(test));
            height += nozzleWidth;
        }

        return figure;
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


    /* Connects a group of lines using recursion and a dictionary
     *
     */
    private static PathsD connectPaths(PathsD paths)
    {
        var connections = new Dictionary<PointD, PathD>();
        foreach (var path in paths)
        {
            var connected = Connect(connections, path);
            connections.Add(connected[0], connected);
        }

        return new PathsD(connections.Values);
    }

    //bug sometimes random lines get connected
    private static PathD Connect(Dictionary<PointD, PathD> connections, PathD path)
    {
        if (connections.ContainsKey(path.Last()))
        {
            var tail = connections[path.Last()];
            connections.Remove(path.Last());
            for (var i = 1; i < tail.Count; i++) path.Add(tail[i]);

            path = Connect(connections, path);
        }
        
        if (connections.ContainsKey(path.First()))
        {
            PathD head = connections[path.First()];
            connections.Remove(path.First());
            for (int i = 1; i < path.Count; i++)
            {
                head.Add(path[i]);
            }

            path = Connect(connections, head);
        }
        return path;
    }


    public static PathsD ErodeAndShell(PathsD slice, double nozzleWidth, int nrShells)
    {
        Console.WriteLine("eroding");
        var eroded = Clipper.InflatePaths(slice, -nozzleWidth / 2, JoinType.Miter, EndType.Square);
        //making multiple shells bug double of amount intended
        // PathsD output = new PathsD();
        // for(int i = 0; i < nrShells; i++){
        //     PathsD temp = Clipper.InflatePaths(eroded, -_speed*(2*i), JoinType.Square, EndType.Square);
        //     foreach(var path in temp){
        //         output.Add(path);
        //     }
        // }


        // MeshGeometry3D mesh = (ModelVisual3D.Content as GeometryModel3D).Geometry as MeshGeometry3D;
        // foreach (var p in slice){

        // }
        return eroded;
        // return output;

        // PopupWindow popup = new PopupWindow(eroded, GetMeshSize(mesh));
    }
}
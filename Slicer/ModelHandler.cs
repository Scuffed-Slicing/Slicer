using System.Windows.Media.Media3D;

namespace Slicer;

public static class ModelHandler
{
    /*  Makes sure all points in the mesh have a Z >= 0 and centers the mesh
     *  MeshGeometry3D mesh: the mesh to be normalised
     *  return: the same mesh but with new points
     */ 
    public static MeshGeometry3D NormaliseMesh(MeshGeometry3D mesh)
    {
        Point3DCollection points = mesh.Positions;
        Point3DCollection normal = new Point3DCollection();
            
        double lowestZ = double.MaxValue;
        double avgXOffset = 0;
        double avgYOffset = 0;
        foreach (var point in points)
        {
            avgXOffset += point.X;
            avgYOffset += point.Y;
            lowestZ = double.Min(point.Z, lowestZ);    

        }
            
        avgYOffset /= points.Count;
        avgXOffset /= points.Count;
            
        foreach (var point in points)
        {  
            normal.Add(new Point3D(point.X - avgXOffset, point.Y-avgYOffset, point.Z - lowestZ)); 
        }
        mesh.Positions = normal;
        return mesh;
    }

    public static double GetMeshSize(MeshGeometry3D mesh)
    {
        double xmax = 0;
        double xmin = 0;
        double ymax = 0;
        double ymin = 0;

        foreach (var point in mesh.Positions)
        {
            xmax = double.Max(xmax, point.X);
            xmin = double.Min(xmin, point.X);
            ymax = double.Max(ymax, point.Y);
            ymin = double.Min(ymin, point.Y);
        }
            
        return double.Max(xmax - xmin, ymax - ymin);
    }
    
    /* calculates the largest dimension of the given mesh used for resizing the cutting plane
     * 
     */
    public static double GetMeshHeight(MeshGeometry3D mesh)
    {
        double zmax = 0;
        double zmin = 0;

        foreach (var point in mesh.Positions)
        {
            zmax = double.Max(zmax, point.Z);
            zmin = double.Min(zmin, point.Z);
        }
            
        return (zmax - zmin);
    }
    
    public static GeometryModel3D FindLargestModel(Model3DGroup group) {
            
        if (group.Children.Count == 1)
            return group.Children[0] as GeometryModel3D;
        int maxCount = int.MinValue;
        GeometryModel3D maxModel = null;
        foreach (GeometryModel3D model in group.Children) {

            int count = ((MeshGeometry3D)model.Geometry).Positions.Count;
            if (maxCount < count) {
                maxCount = count;
                maxModel = model;
            }
        }
        return maxModel;
    }
}
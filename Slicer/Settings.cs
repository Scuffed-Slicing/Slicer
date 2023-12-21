namespace Slicer;

public static class Settings
{
    public static int ShellCount { set; get; } = 4;
    public static int RoofCount { set; get; } = 4;
    public static double NozzleWidth { set; get; } = 0.4;
    public static double LayerHeight { set; get; } = 0.2;
    public static double SupportFill { set; get; } = 0.075;
    public static double FigureFill { set; get; } = 0.2;
    public static double SquareSize { set; get; } = 0.2;

    public static double PrintSpeed { set; get; } = 1700;
    public static double NozzleTemp { set; get; } = 205;



}
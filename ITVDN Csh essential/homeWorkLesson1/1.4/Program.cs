//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Application
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Point point1 = new Point(0, 0);
            Point point2 = new Point(0, 10);
            Point point3 = new Point(20, 10);
            Point point4 = new Point(20, 0);

            Figure someFigure = new Figure(point1,
                                           point2,
                                           point3,
                                           point4);
            someFigure.printPerimeter();

        }
    }
}

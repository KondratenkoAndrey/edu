//
// Figure.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Figure
    {
        public Figure(Point point1,
                      Point point2,
                      Point point3)
        {
            points = new Point[]
            {
                point1,
                point2,
                point3
            };
        }

        public Figure(Point point1,
                      Point point2,
                      Point point3,
                      Point point4)
        {
            points = new Point[]
            {
                point1,
                point2,
                point3,
                point4            
            };
        }

        public Figure(Point point1,
                      Point point2,
                      Point point3,
                      Point point4,
                      Point point5)
        {
            points = new Point[]
            {
                point1,
                point2,
                point3,
                point4,
                point5
            };
        }

        private Point[] points;

        private double LengthSide(Point a, Point b)
        {
            var test = Math.Sqrt((Math.Pow((b.X - a.X), 2) + Math.Pow((b.Y - a.Y), 2)));
            return test;
        }

        public void printPerimeter()
        {
            double perimeter = 0;

            for (int i = 0; i < points.Length; i++)
            {
                perimeter += LengthSide(points[i], points[(i + 1) % points.Length]);
            }

            Console.WriteLine("Polygon has perimeter = {0}", perimeter);
        }

    }
}

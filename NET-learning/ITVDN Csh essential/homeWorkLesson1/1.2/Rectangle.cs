//
// Rectangle.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Rectangle
    {
        public Rectangle()
        {
        }

        public Rectangle(double side1, double side2)
        {
            this.side1 = side1;
            this.side2 = side2;
        }

        private double side1;
        private double side2;

        public double Area { get { return AreaCalculate(); } }
        public double Perimeter { get { return PerimeterCalculate(); } }

        private double AreaCalculate()
        {
            return side1 * side2;
        }

        private double PerimeterCalculate()
        {
            return (side1 + side2) * 2;
        }

    }
}

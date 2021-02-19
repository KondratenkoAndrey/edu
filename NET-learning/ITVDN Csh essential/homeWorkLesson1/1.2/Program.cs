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
            double side1 = 2.5, side2 = 17.5;

            Rectangle someRectangle = new Rectangle(side1, side2);

            Console.WriteLine("Rectangle {0} x {1} " +
                              "has area = {2} " +
                              "and perimeter = {3}",
                             side1,
                             side2,
                             someRectangle.Area,
                             someRectangle.Perimeter);
        }
    }
}

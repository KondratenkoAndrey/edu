//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson3
{
    class MainClass
    {
        static double CalculateCylinderVolume(double radius, double heigth)
        {
            return Math.PI * Math.Pow(radius, 2) * heigth;
        }

        static double CalculateCylinderSquare(double radius, double heigth)
        {
            return 2 * Math.PI * radius * (radius + heigth);
        }

        public static void Main(string[] args)
        {

            int radius = 10, heigth = 30;

            Console.WriteLine("Volume = {0:F2}", 
                              CalculateCylinderVolume(radius, heigth));
            Console.WriteLine("Square = {0:F2}", 
                              CalculateCylinderSquare(radius, heigth));

        }
    }
}

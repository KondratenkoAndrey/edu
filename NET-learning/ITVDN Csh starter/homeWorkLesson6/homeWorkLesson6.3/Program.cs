//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson6
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            int side = 50;

            //прямоугольник
            for (int i = 0; i < side; i++) {
                for (int j = 0; j < side; j++) {
                    Console.Write("* ");
                }
                Console.Write("\n");
            }
            Console.WriteLine();

            //прямоугольный треугольник
            for (int i = 0; i < side; i++)
            {
                for (int j = 0; j <= i; j++)
                {
                    Console.Write("* ");
                }
                Console.Write("\n");
            }
            Console.WriteLine();

            //равносторонний треугольник
            for (int i = 0; i < side; i++)
            {
                for (int j = 0; j < ((i < side / 2) ? i : side - i); j++)
                {
                    Console.Write("* ");
                }
                Console.Write("\n");
            }
            Console.WriteLine();

            //ромб
            for (int i = 0; i < side; i++)
            {
                for (int j = 0; j < side; j++)
                {
                    if (i - j <= side / 2 && i + j >= side / 2 && j - i <= side / 2 && j + i < side * 3 / 2) {
                        Console.Write("* ");
                    } else {
                        Console.Write("  ");
                    }


                }
                Console.Write("\n");
            }

        }
    }
}

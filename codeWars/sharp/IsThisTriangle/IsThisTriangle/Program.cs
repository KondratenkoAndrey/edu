//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace IsThisTriangle
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(Triangle.IsTriangle(-1, 1, 1));
            Console.WriteLine(Triangle.IsTriangle(1, 0, 3));
            Console.WriteLine(Triangle.IsTriangle(1, 1, 10));
            Console.WriteLine(Triangle.IsTriangle(2, 15, 3));
            Console.WriteLine(Triangle.IsTriangle(1000, 1, 1));
            Console.WriteLine(Triangle.IsTriangle(10, 10, 10));
            Console.WriteLine(Triangle.IsTriangle(3, 4, 5));
        }
    }
}

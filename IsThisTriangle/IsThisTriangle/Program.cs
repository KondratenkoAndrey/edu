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
            int a = 0, b = 0, c = 0;
            Random rnd = new Random();

            for (int i = 0; i < 100; i++) {
                a = rnd.Next(1, 100);
                b = rnd.Next(1, 100);
                c = rnd.Next(1, 100);
                Console.WriteLine(Triangle.IsTriangle(a, b, c));
            }

        }
    }
}

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
        public static void Main(string[] args)
        {

            int x = 10, y = 12, z = 3;

            Console.WriteLine("x = {0, 4} y = {1, 4} z = {2, 4}", x, y, z);

            x += y - x++ * z;
            z = --x - y * 5;
            y /= x + 5 % z;
            z = x++ + y * 5;
            x = y - x++ * z;

            Console.WriteLine("x = {0, 4} y = {1, 4} z = {2, 4}", x, y, z);
        
        }
    }
}

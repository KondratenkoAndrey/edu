//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson5
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            int x = 5, y = 10, z = 15;

            Console.WriteLine("x = {0, 2}, y = {1, 2}, z = {2, 2}", x, y, z);

            x += y >> x++ * z;
            z = ++x & y * 5;
            y /= x + 5 | z;
            z = x++ & y * 5;
            x = y << x++ ^ z;

            Console.WriteLine("x = {0, 2}, y = {1, 2}, z = {2, 2}", x, y, z);
        
        }
    }
}

//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson4
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            int x = 10;

            if (x >= 0 & x <= 14)
            {
                Console.WriteLine("number {0} in [0-14] range", x);
            }
            else if (x >= 14 & x <= 35)
            {
                Console.WriteLine("number {0} in [15-35] range", x);
            }
            else if (x >= 36 & x <= 50)
            {
                Console.WriteLine("number {0} in [36-50] range", x);
            }
            else if (x >= 51 & x <= 100)
            {
                Console.WriteLine("number {0} in [51-100] range", x);
            }
            else
            {
                Console.WriteLine("number {0} not in [0-100] range", x);
            }

        }
    }
}

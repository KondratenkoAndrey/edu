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
        static int CalculateRoutesCount(int n) {

            if (n == 0) {
                return 1;
            } else {
                return n * CalculateRoutesCount(n - 1);
            }

        }

        public static void Main(string[] args)
        {

            int n = 5;
            Console.WriteLine(CalculateRoutesCount(n));

        }
    }
}

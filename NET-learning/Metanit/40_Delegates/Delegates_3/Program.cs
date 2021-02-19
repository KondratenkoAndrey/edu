//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Delegates_3
{
    class MainClass
    {
         delegate int Operation(int x, int y);

        public static void Main(string[] args)
        {
            DoOperation(4, 5, Add);
            DoOperation(4, 5, Multiply);
        }

        static void DoOperation(int x, int y, Operation operation)
        {
            int res = operation(x, y);
            Console.WriteLine($"Result of operation is {res}");
        }

        static int Add(int x, int y)
        {
            return x + y;
        }

        static int Multiply(int x, int y)
        {
            return x * y;
        }

    }
}

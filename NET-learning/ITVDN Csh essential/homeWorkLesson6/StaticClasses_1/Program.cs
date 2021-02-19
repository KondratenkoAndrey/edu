//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace StaticClasses_1
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(Calculator.Add(10, 2));
            Console.WriteLine(Calculator.Sub(10, 2));
            Console.WriteLine(Calculator.Mul(10, 2));
            Console.WriteLine(Calculator.Div(10, 0));
        }
    }
}

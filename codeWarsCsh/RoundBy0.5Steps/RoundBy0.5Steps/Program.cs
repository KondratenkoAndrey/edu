//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace RoundBy0.Steps
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            double[] cases = {4.2, 4.4, 4.6, 4.8};

            foreach (var item in cases)
            {
                Console.WriteLine(Kata.Solution(item)); // 4, 4.5, 4.5, 5
            }
        }
    }
}

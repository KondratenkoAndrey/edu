//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace sumOfArraysElements
{
    class MainClass
    {
        static int SumArguments(params int[] array) {
            
            int result = 0;

            for (int i = 0; i < array.Length; i++) {
                result += array[i];
            }

            return result;
        }

        public static void Main(string[] args)
        {
            Console.WriteLine(SumArguments(0, 2, 5, 5, 1));
        }
    }
}

//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Array
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Get started!");

            int[] someArray = myArray.GetRandomArray(10, -100, 100);

            Console.WriteLine("Array: {0}", myArray.ToString(someArray));

            Console.WriteLine("Max of array: {0}", myArray.GetMax(someArray));

            Console.WriteLine("Min of array: {0}", myArray.GetMin(someArray));

            Console.WriteLine("Sum of array: {0}", myArray.GetSum(someArray));

            Console.WriteLine("Average of array: {0}", myArray.GetAverage(someArray));

            Console.WriteLine("Odds of array: {0}", myArray.ToString(myArray.GetOddNumbers(someArray)));

        }
    }
}

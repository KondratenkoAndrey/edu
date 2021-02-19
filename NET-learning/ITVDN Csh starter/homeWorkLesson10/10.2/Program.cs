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

        static void PrintArray(int[] arr) {
            Console.Write("[");
            for (int i = 0; i < arr.Length; i++)
            {
                Console.Write(arr[i] + (i == arr.Length - 1 ? "" : " "));
            }
            Console.WriteLine("]");
        }

        static void PrintMaxInArray(int[] arr) {
            int max = arr[0];
            foreach (var number in arr)
            {
                max = number > max ? number : max;
            }
            Console.WriteLine("Max of array: {0}", max);
        }

        static void PrintMinInArray(int[] arr)
        {
            int min = arr[0];
            foreach (var number in arr)
            {
                min = number < min ? number : min;
            }
            Console.WriteLine("Min of array: {0}", min);
        }

        static void PrintSumOfArrayElements(int[] arr)
        {
            int sum = 0;
            foreach (var number in arr)
            {
                sum += number;
            }
            Console.WriteLine("Sum of array elements: {0}", sum);
        }

        static void PrintAverageOfArray(int[] arr)
        {
            int sum = 0;
            foreach (var number in arr)
            {
                sum += number;
            }
            Console.WriteLine("Average of array elements: {0}", sum / arr.Length);
        }

        static void PrintOddElementsOfArray(int[] arr)
        {
            Console.Write("[");
            for (int i = 0; i < arr.Length; i++)
            {
                if ((arr[i] & 0x01) != 0)
                {
                    Console.Write(arr[i] + (i == arr.Length - 1 ? "" : " "));
                }
            }
            Console.WriteLine("]");        }

        public static void Main(string[] args)
        {

            Random rnd = new Random();

            int[] arr = new int[rnd.Next(1, 10)];

            for (int i = 0; i < arr.Length; i++) {
                arr[i] = rnd.Next(-100, 100);
            }

            PrintArray(arr);
            PrintMaxInArray(arr);
            PrintMinInArray(arr);
            PrintSumOfArrayElements(arr);
            PrintAverageOfArray(arr);
            PrintOddElementsOfArray(arr);

        }
    }
}

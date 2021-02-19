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
        
        static void PrintArray(int[] arr)
        {
            Console.Write("[");
            for (int i = 0; i < arr.Length; i++)
            {
                Console.Write(arr[i] + (i == arr.Length - 1 ? "" : " "));
            }
            Console.WriteLine("]");
        }

        static int[] MyReverse(int[] arr) {
            
            for (int i = 0; i < arr.Length / 2; i++) {
                int tmp = arr[i];
                arr[i] = arr[arr.Length - i - 1];
                arr[arr.Length - i - 1] = tmp;
            }

            return arr;
        }

        static int[] SubArray(int[] arr, int index, int count) {

            if (index + count > arr.Length) {
                throw new Exception("Out of range");
            }

            int[] newArr = new int[count];
            for (int i = 0; i < newArr.Length; i++) {
                newArr[i] = arr[i + index];
            }
            return newArr;
        }

        public static void Main(string[] args)
        {

            Random rnd = new Random();

            int[] arr = new int[rnd.Next(1, 10)];

            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = rnd.Next(-100, 100);
            }

            PrintArray(arr);
            PrintArray(MyReverse(arr));
            PrintArray(SubArray(MyReverse(arr), 2, 3));

        }
    }
}

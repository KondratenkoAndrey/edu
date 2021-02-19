//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace DirectionsReduction
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            PrintArray(
                DirReduction.dirReduc(new string[] { "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" })
            );  // { "WEST"}
            PrintArray(
                DirReduction.dirReduc(new string[] { "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH" })
            ); // { }
            PrintArray(
                DirReduction.dirReduc(new string[] { "NORTH", "WEST", "SOUTH", "EAST" })
            ); // "NORTH", "WEST", "SOUTH", "EAST"

        }

        static void PrintArray(string[] arr)
        {
            foreach (var item in arr)
            {
                Console.Write($"\"{item}\" ");
            }
            Console.WriteLine();
        }

    }
}

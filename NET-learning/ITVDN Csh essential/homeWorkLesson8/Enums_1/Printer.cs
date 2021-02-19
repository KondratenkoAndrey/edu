//
// Printer.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Enums_1
{
    public static class Printer
    {
        public enum Color
        {
            Red = 12,
            Green = 10,
            Blue = 9
        }

        public static void Print(string str, Color color)
        {
            ConsoleColor tmpColor = Console.ForegroundColor;
            Console.ForegroundColor = (ConsoleColor)color;
            Console.WriteLine(str);
            Console.ForegroundColor = tmpColor;
        }
    }
}

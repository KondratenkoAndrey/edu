//
// ColorPrinter.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class ColorPrinter : Printer
    {
        public ColorPrinter()
        {
        }

        public override void Print(string value)
        {
            ConsoleColor lastColor = Console.ForegroundColor;
            Console.ForegroundColor = ConsoleColor.DarkGreen;
            Console.WriteLine(value);
            Console.ForegroundColor = lastColor;
        }
    }
}

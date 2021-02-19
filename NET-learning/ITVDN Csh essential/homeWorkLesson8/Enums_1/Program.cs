//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Enums_1
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Printer.Print("Red string", Printer.Color.Red);
            Printer.Print("Green string", Printer.Color.Green);
            Printer.Print("Blue string", Printer.Color.Blue);
            //Printer.Print("Red", 1);
        }
    }
}

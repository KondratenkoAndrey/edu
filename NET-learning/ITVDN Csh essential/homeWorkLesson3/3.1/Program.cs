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
        public static void Main(string[] args)
        {
            Printer printer = new Printer();
            printer.Print("Some text from base class");

            ColorPrinter colorPrinter = new ColorPrinter();
            colorPrinter.Print("Some text from derived class");

            Printer upPrinter = (Printer)colorPrinter;
            upPrinter.Print("Some text from upcasted base class");
        }
    }
}

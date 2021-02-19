//
// Printer.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Printer
    {
        public Printer()
        {
        }

        public virtual void Print(string value)
        {
            Console.WriteLine(value);
        }
    }
}

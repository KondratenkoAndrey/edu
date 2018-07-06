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

            Converter converter = new Converter(63.25D, 74.38D);

            Console.WriteLine("{0:f2}", converter.RubToUsd(1000));
            Console.WriteLine("{0:f2}", converter.RubToEur(1000));
        }
    }
}

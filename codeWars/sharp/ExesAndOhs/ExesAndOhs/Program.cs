//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace ExesAndOhs
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(Kata.XO("xo"));   //true
            Console.WriteLine(Kata.XO("xxOo")); //true
            Console.WriteLine(Kata.XO("xxxm")); //false
            Console.WriteLine(Kata.XO("Oo"));   //false
            Console.WriteLine(Kata.XO("ooom")); //false
        }
    }
}

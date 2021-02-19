//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace DontGiveMeFive
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(Kata.DontGiveMeFive(1, 9));  //8
            Console.WriteLine(Kata.DontGiveMeFive(4, 17)); //12
            Console.WriteLine(Kata.DontGiveMeFive(5, 6)); //1
            Console.WriteLine(Kata.DontGiveMeFive(0, 1)); //2
            Console.WriteLine(Kata.DontGiveMeFive(50, 59)); //2
            Console.WriteLine(Kata.DontGiveMeFive(-1, 1)); //3
            Console.WriteLine(Kata.DontGiveMeFive(-6, 1)); //7
        }
    }
}

//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace RoundBy0.Steps
{
    public class Kata
    {
        public static double Solution(double n)
        {
            //without Math is more interesting))
            return (int)n + ((int)((n * 10 % 10 / 10) / 0.25) + 1) / 2 / 2.0;
        }
    }
}

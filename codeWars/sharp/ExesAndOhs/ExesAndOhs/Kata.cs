//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace ExesAndOhs
{
    public static class Kata
    {
        public static bool XO(string input)
        {
            int xCount = input.ToLower().Split('x').Length - 1;
            int oCount = input.ToLower().Split('o').Length - 1;
            return xCount == oCount;
        }
    }
}

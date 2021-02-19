//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;
namespace FindTheOddInt
{
    public class Kata
    {
        public static int find_it(int[] seq)
        {
            Dictionary<int, int> dict = new Dictionary<int, int>();

            foreach (var number in seq)
            {
                if (!dict.ContainsKey(number))
                {
                    dict.Add(number, 1);
                }
                else
                {
                    dict[number]++;
                }
            }

            foreach (var number in dict)
            {
                if ((number.Value % 2) == 1)
                {
                    return number.Key;
                }
            }
            return -1;
        }
    }
}

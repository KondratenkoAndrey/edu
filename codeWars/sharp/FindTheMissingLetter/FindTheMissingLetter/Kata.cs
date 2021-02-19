//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace FindTheMissingLetter
{
    public class Kata
    {
        public static char FindMissingLetter(char[] array)
        {
            for (int i = 0; i < array.Length - 1; i++)
            {
                if ((int)array[i] != (int)array[i + 1] - 1)
                {
                    return (char)((int)array[i] + 1);
                }
            }
            return '\0';
        }
    }
}

//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace DontGiveMeFive
{
    public class Kata
    {
        public static int DontGiveMeFive(int start, int end)
        {
            
            int result = end - start + 1;

            for (int i = start; i <= end; i++)
            {
                int number = i;
                while (number != 0)
                {
                    if ((number % 10) == 5 || (number % 10) == -5)
                    {
                        result--;
                        break;
                    }
                    number /= 10;
                }
            }
            return result;

        }
    }
}

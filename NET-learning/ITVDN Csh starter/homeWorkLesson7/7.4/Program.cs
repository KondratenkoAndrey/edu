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

        static bool isPositive(int number) {
            return (number & 0b10000000) == 0;
        }

        static bool isSimple(int number) {
            int divisorsCount = 0;

            for (int i = 1; i <= Math.Abs(number); i++) {
                if (number % i == 0) {
                    divisorsCount++;
                }
            }

            return (divisorsCount <= 2) ? true : false;

        }

        static bool dividedByOneOf(int number, int[] divisors) {
            foreach (var item in divisors)
            {
                if (number % item == 0) {
                    return true;
                }
            }
            return false;
        }

        public static void Main(string[] args)
        {

            int[] numbers = { -11, -6, 0, 1, 2, 4, 7 };
            int[] divisors = {2, 5, 3, 6, 9};

            foreach (var number in numbers)
            {
                Console.Write("{0, 3} is ", number);
                Console.Write("{0}", 
                              (isPositive(number) ? "positive" : "negative"));
                Console.Write("{0}", 
                              (isSimple(number) ? ", simple" : ""));
                Console.Write("{0}", 
                              (dividedByOneOf(number, divisors) ? String.Format(", devided by one of [{0}]", string.Join(" ", divisors)) : ""));
                Console.WriteLine();
            }

        }
    }
}

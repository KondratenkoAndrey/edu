//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson5
{
    
    class MainClass

    {
        public static bool isEven(int number) {

            //return (number % 2) == 0; // вариант 1

            return (number & 0x01) == 0;
                
        }

        public static void Main(string[] args)
        {
            int[] numbers = {0, 1, 2, 3, 4, 5};

            foreach (var item in numbers)
            {
                Console.WriteLine("{0} is {1}", item, isEven(item) ? "Even" : "Odd");
            }

        }
    }
}

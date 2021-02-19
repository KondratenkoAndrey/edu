//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson6
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            
            int a = 10, b = 60, sum = 0;

            for (int i = a + 1; i < b; i++) {
                sum += i;
                if ((i & 1) != 0)
                {
                    Console.Write("{0} ", i);
                }
            }
            Console.WriteLine("\nsum = {0}", sum);

        }
    }
}

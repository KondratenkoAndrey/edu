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
            
            int n = 5, count = 1;
            Console.Write("{0}! = ", n);

            while (n > 1)
            {
                count += n;
                n--;
            }

            Console.WriteLine("{0}", count);

        }
    }
}

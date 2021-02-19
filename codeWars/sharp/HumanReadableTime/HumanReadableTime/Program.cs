//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace HumanReadableTime
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(TimeFormat.GetReadableTime(59));
            Console.WriteLine(TimeFormat.GetReadableTime(60));
            Console.WriteLine(TimeFormat.GetReadableTime(61));
            Console.WriteLine(TimeFormat.GetReadableTime(3599));
            Console.WriteLine(TimeFormat.GetReadableTime(3600));
            Console.WriteLine(TimeFormat.GetReadableTime(3601));
            Console.WriteLine(TimeFormat.GetReadableTime(359999));
        }
    }
}

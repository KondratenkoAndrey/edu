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
        public static void Main(string[] args)
        {
            Console.Write("Введите сумму: ");
            double value = Convert.ToDouble(Console.ReadLine());

            Console.Write("Введите курс: ");
            double course = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Результат = {0:F2}", value * course);
        }
    }
}

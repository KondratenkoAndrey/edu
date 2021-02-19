//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace DateTime_1
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Введите дату рождения в формате \"дд.мм.гггг\"");
            string date = string.Empty;
            try
            {
                date = Console.ReadLine();
                DateTime dateOfBirth = DateTime.Parse(date);
                Console.WriteLine("До вашего дня рождения осталось дней: {0}", DateOfBirth.DaysToBirth(dateOfBirth));
            }
            catch
            {
                Console.WriteLine("Неверный формат даты: \"{0}\"", date);
            }

        }
    }
}

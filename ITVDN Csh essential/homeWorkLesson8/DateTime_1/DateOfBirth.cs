//
// DateOfBirth.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace DateTime_1
{
    public class DateOfBirth
    {
        public static int DaysToBirth(DateTime dateOfBirth)
        {
            //определяем дату следующего дня рождения - в этом году или следующем
            DateTime nextBirthday = (new DateTime(DateTime.Now.Year, dateOfBirth.Month, dateOfBirth.Day).DayOfYear) >= DateTime.Now.DayOfYear ?
                                               new DateTime(DateTime.Now.Year, dateOfBirth.Month, dateOfBirth.Day) :
                                               new DateTime(DateTime.Now.Year + 1, dateOfBirth.Month, dateOfBirth.Day);
            //возвращаем количество дней до дня рождения
            return (nextBirthday.Date - DateTime.Now.Date).Days;
        }
    }
}

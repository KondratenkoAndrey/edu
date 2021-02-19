//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

/* 
 * После объявления переменной letter допишите оператор выбора вариантов, 
 * который будет делать следующее:
 * если в letter хранится значение ‘a’ – тогда вывести в консоль строку 
 * "Первая буква английского алфавита"; если значение ‘b’ – вывести 
 * "Вторая буква английского алфавита"; иначе – вывести "Другая буква". 
 * Для вывода на консоль используйте метод WriteLine
 */

namespace homeWorkLesson4
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            char letter = 'b';

            switch (letter)
            {
                case 'a':
                    Console.WriteLine("Первая буква английского алфавита");
                    break;
                case 'b':
                    Console.WriteLine("Вторая буква английского алфавита");
                    break;
                default:
                    Console.WriteLine("Другая буква");
                    break;
            }

        }
    }
}

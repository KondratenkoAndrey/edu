//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

/*  
 * Создайте строковую переменную с именем inputString и в той же строке 
 * проинициализируйте ее считанной из консоли строкой. Затем, добавьте 
 * условный оператор, который должен выполнять следующее: если длина 
 * введенной строки равна 5 символам, то вывести в консоль 
 * "Да, длина строки равна 5", иначе – вывести "Нет, длина строки не равна 5". 
 * Выводите данные на консоль с помощью метода WriteLine
 */

namespace homeWorkLesson4
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            string inputString = Console.ReadLine();

            if (inputString.Length == 5) {
                Console.WriteLine("Да, длина строки равна 5");
            } else {
                Console.WriteLine("Нет, длина строки не равна 5");
            }

        }
    }
}

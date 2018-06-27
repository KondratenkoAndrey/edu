//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko

/*
 * Welcome. In this kata, you are asked to square every digit of a number.
 * For example, if we run 9119 through the function, 811181 will come out, because 9^2 is 81 and 1^2 is 1.
 * Note: The function accepts an integer and returns an integer
*/

using System;

namespace SquareEveryDigit
{
    
    class MainClass
    {
        public static int SquareDigits(int n)
        {
            //можно решать проще, через строки, но это уже не совсем математика
            //в таком вариаенте не работает с нулем, есть решение для 1 нуля, оно громоздкое, для несколько подряд идущих нолей все плохо...
            int result = 0;

            while (n != 0)
            {
                //берем последнюю цифру, возводим в квадрат и добавляем предидущий результат, увеличенный на количество порядков, равное количеству знаков
                result += (int)Math.Pow(n % 10, 2) * ((result == 0) ? 1 : (int)Math.Pow(10, (int)(Math.Log10(result) + 1)));
                //отбрасываем последнюю цифру
                n /= 10;
            }

            return result;

        } 

        public static void Main(string[] args)
        {
            Console.WriteLine(SquareDigits(2));
        }
    }
}

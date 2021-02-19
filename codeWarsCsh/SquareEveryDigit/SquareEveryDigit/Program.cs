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
        //решение со строками
        public static int SquareDigitsOverString(int n)
        {
            
            string result = "";

            foreach (var chr in n.ToString())
            {
                result += Math.Pow(int.Parse(chr.ToString()), 2).ToString();
            }

            return Convert.ToInt32(result);

        } 

        //решение без строк
        public static int SquareDigitsOverInt(int n)
        {
            
            int result = 0, digit = 0, tens = 0;
            int multiplier = 1;

            while (n != 0)
            {
                //цифра возведенная в квадрат
                digit = (int)Math.Pow(n % 10, 2); 

                //добавление порядка к цифре в зависимости от ее положения в итоговом числе
                tens = ((result == 0) ? 1 : (int)Math.Pow(10, (int)(Math.Log10(result) + 1)));

                result += multiplier * digit * tens; 

                //множитель, увеличивающий порядок в том случае, если предидущая цифра была 0
                multiplier = (n % 10 == 0 ? multiplier * 10 : 1);

                //отбрасываем последнюю цифру
                n /= 10;
            }

            return result;

        }

        public static void Main(string[] args)
        {
            Console.WriteLine(SquareDigitsOverInt(90709));
            Console.WriteLine(SquareDigitsOverString(90709));
        }
    }
}

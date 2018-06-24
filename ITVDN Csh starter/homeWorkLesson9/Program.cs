//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko

/*
 * В класс MyClass поместите функцию int[] PairValuesArray(int n), 
 * которая будет возвращать массив упорядоченных по возрастанию ЧЁТНЫХ 
 * натуральных чисел в промежутке от 0 (включительно!) до n включительно.
 * Разрешается использовать только классы непосредственно из пространства 
 * имен System, все вложенные в него пространства имен использовать 
 * запрещается.
*/

using System;

namespace arr
{
    class MainClass
    {

        static int[] PairValuesArray(int n)
        {

            int[] array = new int[(n / 2) + 1];
            int j = 0;

            for (int i = 0; i <= n; i++)
            {
                if ((i % 2) == 0) {
                    array[j] = i;
                    j++;
                }
            }

            return array;
        }

        public static void Main(string[] args)
        {
            int[] arr = PairValuesArray(10);

            for (int i = 0; i < arr.Length; i++) {
                Console.Write("{0} ", arr[i]);
            }

        }
    }
}

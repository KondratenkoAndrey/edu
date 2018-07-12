//
// myArray.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;
namespace Array
{
    public class myArray
    {

        //вернуть массив целых чисел длинной length,
        //заполненный случайными значенияи от min до max
        public static int[] GetRandomArray(int length, int min, int max)
        {
            Random random = new Random();
            int[] array = new int[length];
            for (int i = 0; i < array.Length; i++)
            {
                array[i] = random.Next(min, max);
            }
            return array;
        }

        //Преобразовать массив в строку
        public static string ToString(int[] array)
        {
            string result = "";

            foreach (var item in array)
            {
                result += item + " ";
            }

            if (result.Length > 1)
            {
                result = result.Remove(result.Length - 1);
            }

            return result;
        }

        //Найти максимальное значение
        public static int GetMax(int[] array)
        {
            CheckArrayForEmpty(array);

            int max = array[0];

            for (int i = 1; i < array.Length; i++)
            {
                if (array[i] > max)
                {
                    max = array[i];
                }
            }

            return max;
        }

        //Найти минимальное значение
        public static int GetMin(int[] array)
        {
            CheckArrayForEmpty(array);

            int min = array[0];

            for (int i = 1; i < array.Length; i++)
            {
                if (array[i] < min)
                {
                    min = array[i];
                }
            }

            return min;
        }

        //Вычислить сумму всех элементов
        public static int GetSum(int[] array)
        {
            
            CheckArrayForEmpty(array);

            int sum = 0;

            foreach (var item in array)
            {
                sum += item;
            }

            return sum;

        }

        //Вычислить среднее арифметическое
        public static double GetAverage(int[] array)
        {

            CheckArrayForEmpty(array);

            return (GetSum(array) / (double)array.Length);

        }

        //Вернуть массив, состоящий из нечетных значений массива
        public static int[] GetOddNumbers(int[] array)
        {
            List<int> list = new List<int>();

            foreach (var item in array)
            {
                if ((item % 2) != 0)
                {
                    list.Add(item);
                }
            }

            return list.ToArray();

        }

        private static void CheckArrayForEmpty(int[] array)
        {
            if (array.Length == 0)
            {
                throw new Exception("Array is empty");
            }
        }

    }
}

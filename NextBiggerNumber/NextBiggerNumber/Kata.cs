//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;
using System.Linq;

namespace NextBiggerNumber
{
    public class Kata
    {
        public static long NextBiggerNumber(long n)
        {
            //переводим число в список цифр
            List<int> listOfNumbers = new List<int>();
            foreach (var item in n.ToString())
            {
                listOfNumbers.Add(int.Parse(item.ToString()));
            }

            //присваиваем результату -1
            n = -1;

            //инициалиируем переменные, которые будут 
            //хранить индексы чисел для обмена местами
            int l = 0;
            int m = -1;

            //определяем индексы, обмен местами которых 
            //даст следующее большее число
            for (int i = listOfNumbers.Count - 1; i >= 0; i--)
            {
                for (int j = i - 1; j >= 0; j--)
                {
                    if ((listOfNumbers[i] > listOfNumbers[j]) && (j > m))
                    {
                        l = i;
                        m = j;
                    }
                }
            }

            //если большего числа нет, то возвращаем -1
            if (m == -1)
            {
                return -1;
            }

            //меняем местами цифры
            listOfNumbers.Insert(m, listOfNumbers[l]);
            listOfNumbers.RemoveAt(l + 1);

            //хвост числа сортируем во возрастанию
            List<int> tail = listOfNumbers.GetRange(m + 1, listOfNumbers.Count - m - 1);
            listOfNumbers.RemoveRange(m + 1, listOfNumbers.Count - m - 1);
            tail.Sort();
            listOfNumbers.AddRange(tail);
            n = long.Parse(string.Concat(listOfNumbers));

            return n;
        }
    }
}

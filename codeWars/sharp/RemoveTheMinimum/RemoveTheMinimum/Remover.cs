//
// Remover.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;
using System.Linq;
namespace RemoveTheMinimum
{
    public class Remover
    {
        public static List<int> RemoveSmallest(List<int> numbers)
        {
            
            //решение без Linq
            //если пустой массив, то и возвращаяем пустой
            if (numbers.Count == 0)
            {
                return numbers;
            }

            //создаем новый чтобы не изменить исходный
            List<int> result = new List<int>(numbers);

            //ищем минимальное значение
            int minValue = result[0];

            foreach (var item in result)
            {
                if (item < minValue)
                {
                    minValue = item;
                }
            }

             //удалаем первое минимальное значение
            result.RemoveAt(result.IndexOf(minValue));

            return result;

            /*
            //решение с Linq
            //создаем новый чтобы не изменить исходный
            List<int> result = new List<int>(numbers);
            result.Remove(result.DefaultIfEmpty().Min());
            return result;
            */
        }
    }
}

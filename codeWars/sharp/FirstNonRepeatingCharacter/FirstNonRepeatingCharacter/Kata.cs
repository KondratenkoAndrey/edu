//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace FirstNonRepeatingCharacter
{
    public class Kata
    {
        public static string FirstNonRepeatingLetter(string s)
        {
            //по заданию a и A одинаковые, но вернуть нужно 
            //в исходном регистре, поэтому ищем в нижнем, а возвращаем
            //исходный
            string lowerS = s.ToLower();

            foreach (var chr in lowerS)
            {
                //если индекс первого вхождения равен индексу последнего 
                //вхождения, то символ повторяется 1 раз
                if (lowerS.IndexOf(chr) == lowerS.LastIndexOf(chr))
                {
                    return s.Substring(lowerS.IndexOf(chr), 1);
                }
            }

            //если уникальных нет, то возвращаем пустую строку
            return "";
        }
    }
}

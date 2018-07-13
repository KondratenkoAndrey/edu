//
// Kata.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace CamelCaseMethod
{
    public static class Kata
    {

        public static string CamelCase(this string str)
        {
            //если строка пустая, то возвращаем пустую
            if (str == "") 
            {
                return "";
            }

            //делим строку на массив слов
            string[] words = str.Split(' ');
            string result = "";

            //каждое слово берем первую букву и преобразуем ее в верхний 
            //регистр, остальные в нижний
            foreach (var word in words)
            {
                if (word != "")
                {
                    result += word.Substring(0, 1).ToUpper() +
                              word.Substring(1).ToLower();
                }

            }

            return result;
        }

    }
}

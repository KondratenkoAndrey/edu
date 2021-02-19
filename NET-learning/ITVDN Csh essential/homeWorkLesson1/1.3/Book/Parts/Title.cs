//
// TT.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Title
    {
        private string text;

        public string Text
        {
            get
            {
                if (string.IsNullOrEmpty(text))
                {
                    return "Название отсутствует";
                }
                else
                {
                    return text;
                }
            }

            set
            {
                this.text = value;
            }
        }

        public void show()
        {
            ConsoleColor currentColor = Console.ForegroundColor;
            Console.ForegroundColor = ConsoleColor.DarkGreen;
            Console.WriteLine(Text);
            Console.ForegroundColor = currentColor;
        }
    }
}

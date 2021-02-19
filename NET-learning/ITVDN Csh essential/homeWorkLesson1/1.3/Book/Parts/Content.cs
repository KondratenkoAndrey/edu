//
// Content.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Content
    {
        private string text;

        public string Text
        {
            get
            {
                if (string.IsNullOrEmpty(text))
                {
                    return "Содержание отсутствует";
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
            Console.ForegroundColor = ConsoleColor.DarkCyan;
            Console.WriteLine(Text);
            Console.ForegroundColor = currentColor;
        }
    }
}

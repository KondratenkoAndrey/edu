//
// Author.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Author
    {

        private string name;

        public string Name
        {
            get
            {
                if (string.IsNullOrEmpty(name))
                {
                    return "Автор отсутствует";
                }
                else
                {
                    return name;
                }
            }

            set
            {
                this.name = value;
            }
        }

        public void show()
        {
            ConsoleColor currentColor = Console.ForegroundColor;
            Console.ForegroundColor = ConsoleColor.DarkYellow;
            Console.WriteLine(Name);
            Console.ForegroundColor = currentColor;
        }

    }
}

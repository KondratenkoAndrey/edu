//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Application
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Book someBook = new Book("Новая книга");
            someBook.Author = "Вася Иванов";
            someBook.Content = "Повседневная практика показывает, что дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации";
            someBook.show();
        }
    }
}

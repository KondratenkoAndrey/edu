//
// Book.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Book
    {

        private Title title;
        private Author author;
        private Content content;

        public Book(string title)
        {
            initializeBook();
            this.title.Text = title;
        }

        public string Author
        {
            set
            {
                this.author.Name = value;
            }
        }

        public string Content
        {
            set
            {
                this.content.Text = value;
            }
        }

        void initializeBook()
        {
            this.title = new Title();
            this.author = new Author();
            this.content = new Content();
        }

        public void show()
        {
            this.title.show();
            this.author.show();
            this.content.show();
        }

    }
}

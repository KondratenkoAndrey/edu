//
// Article.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Indexers
{
    public class Article
    {
        public Article(string name, 
                       string storeName, 
                       double price)
        {
            this.name = name;
            this.storeName = storeName;
            this.price = price;
        }

        private string name;
        private string storeName;
        private double price;

        public string Name => name;

        public string GetInfo()
        {
            return string.Format("Article \"{0}\" " +
                                 "present in \"{1}\" " +
                                 "with price \"{2}\"",
                                this.name,
                                this.storeName,
                                this.price);
        }

    }
}

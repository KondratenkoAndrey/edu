//
// Store.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Indexers
{
    public class Store
    {
        public Store(Article[] articles)
        {

            this.articles = articles;

        }

        private Article[] articles;

        public Article this[int index]
        {
            get
            {
                try
                {
                    return articles[index];
                }
                catch
                {
                    return null;
                }
            }

        }

        public Article this[string index]
        {
            get
            {
                foreach (Article article in articles)
                {
                    if (article.Name == index)
                    {
                        return article;
                    }
                }
                return null;
            }
        }

        public void PrintInfoAboutArticle(Article article)
        {
            try
            {
                Console.WriteLine(article.GetInfo());
            }
            catch
            {
                Console.WriteLine("Article does not exist");
            }
        }
    }
}

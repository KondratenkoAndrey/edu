//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Indexers
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Let's go!");

            Store someStore = new Store(
                new Article[]
                {
                    new Article("ball", "sport store", 12.45),
                    new Article("bread", "food store", 2.12),
                    new Article("milk", "milk store", 4.44)
                }
            );

            someStore.PrintInfoAboutArticle(someStore[0]);
            someStore.PrintInfoAboutArticle(someStore[1]);
            someStore.PrintInfoAboutArticle(someStore[2]);
            someStore.PrintInfoAboutArticle(someStore[3]);

            someStore.PrintInfoAboutArticle(someStore["ball"]);
            someStore.PrintInfoAboutArticle(someStore["bread"]);
            someStore.PrintInfoAboutArticle(someStore["milk"]);
            someStore.PrintInfoAboutArticle(someStore["water"]);

        }
    }
}

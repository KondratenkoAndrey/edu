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
            User someUser = new User("06.07.2018",
                                    "User",
                                    "Andrey",
                                    "Petrov",
                                    19);
            someUser.PrintInfo();
        }
    }
}

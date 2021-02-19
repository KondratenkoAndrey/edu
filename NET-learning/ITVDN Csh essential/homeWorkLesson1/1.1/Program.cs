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

            Address someAddress = new Address(248000,
                                             "Rassia",
                                             "Kaluga",
                                             "Main",
                                             23,
                                              154);
            Console.WriteLine(someAddress.getString());

        }
    }
}

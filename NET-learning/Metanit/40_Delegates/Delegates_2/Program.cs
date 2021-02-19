//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Delegates_2
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            //Account account = new Account(100);
            //account.RegisterMessageHandler(new Account.MessageHandler(Print));
            //Account account = new Account(100, new Account.MessageHandler(Print));
            Account account = new Account(100, PrintGreen);
            account.RegisterMessageHandler(PrintRed);
            account.Put(50);
            account.Withdraw(100);
            account.UnRegisterMessageHandler(PrintGreen);
            account.Withdraw(200);
        }

        static void PrintGreen(string str)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(str);
            Console.ResetColor();
        }

        static void PrintRed(string str)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(str);
            Console.ResetColor();
        }
    }
}

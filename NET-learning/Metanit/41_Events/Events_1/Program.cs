//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Events_1 
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Account account = new Account(100);
            //account.Added += new Account.MessageHandler(PrintGreen);

            account.Adding += PrintGreen;
            account.Adding += PrintGreen;
            account.Adding += PrintGreen;
            account.Adding -= PrintGreen;
            account.Adding -= PrintGreen;// выполниться 1 раз

            account.Added += PrintGreen;
            account.Withdrawn += PrintRed;

            account.Put(50);
            account.Withdraw(100);
            account.Withdraw(200);
        }

        static void PrintGreen(string message)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(message);
            Console.ResetColor();
        }

        static void PrintRed(object sender, MessageEventArgs e)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(e.Message);
            Console.ResetColor();
        }
    }
}

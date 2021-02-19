//
// Account.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Delegates_2
{
    public class Account
    {
        int balance;

        public delegate void MessageHandler(string str);

        MessageHandler messageHandler;

        public Account(int sum)
        {
            balance = sum;
            invokeMessageHandler($"Счет открыт. Баланс {balance}");
            //Console.WriteLine($"Счет открыт. Баланс {balance}");
        }

        public Account(int sum, MessageHandler handler)
        {
            balance = sum;
            this.messageHandler = handler;
            invokeMessageHandler($"Счет открыт. Баланс {balance}");
        }

        public void RegisterMessageHandler(MessageHandler handler)
        {
            this.messageHandler += handler;
        }

        public void UnRegisterMessageHandler(MessageHandler handler)
        {
            this.messageHandler -= handler;
        }

        public void Put(int sum)
        {
            balance += sum;
            invokeMessageHandler($"На счет пришло {sum}. Баланс {balance}");
        }

        public void Withdraw(int sum)
        {
            if (sum <= balance)
            {
                balance -= sum;
                invokeMessageHandler($"Со счета снято {sum}. Баланс {balance}");
            }
            else
            {
                invokeMessageHandler($"Недостаточно средств! Баланс {balance}");
            }
        }

        void invokeMessageHandler(string str)
        {
            if (messageHandler != null)
            {
                messageHandler.Invoke(str);
            }
        }

    }
}

//
// Account.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Events_1
{
    public  class MessageEventArgs
    {
        public string Message { get; }
        public int Balance { get; }
        public MessageEventArgs(string message, int sum)
        {
            Message = message;
            Balance = sum; 
        }
    }

    public class Account
    {
        int balance;

        public delegate void MessageHandlerWhitString(string message);
        public delegate void MessageHandlerWhitArgs(object sender, MessageEventArgs e);

        public event MessageHandlerWhitString Adding;
        public event MessageHandlerWhitString Added;
        public event MessageHandlerWhitArgs Withdrawn;

        //public event EventHandler Adding;
        //public event EventHandler Added;
        //public event EventHandler Withdrawn;

        public Account(int sum)
        {
            balance = sum;
        }

        public void Put(int sum)
        {
            if (Adding != null)
            {
                Adding($"На счет добавляется {sum}.");
            }

            balance += sum;

            Added?.Invoke($"На счет пришло {sum}. Баланс {balance}");
        }

        public void Withdraw(int sum)
        {
            if (sum <= balance)
            {
                balance -= sum;
                if (Withdrawn != null)
                {
                    Withdrawn(this, new MessageEventArgs($"Со счета снято {sum}. Баланс {balance}", sum));
                }
            }
            else
            {
                if (Withdrawn != null)
                {
                    Withdrawn(this, new MessageEventArgs($"Недостаточно средств! Баланс {balance}", sum));
                }
            }
        }
    }
}

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

        static void PrintInfoAboutCreditAfterPayment(int payment) {
            
            const int amountOfCredit = 700;

            int balance = amountOfCredit - payment;

            Console.WriteLine("Информация о состоянии кредита:");

            if (balance > 0) {
                Console.WriteLine("Задолженность составляет {0}", balance);
            } else if (balance < 0) {
                Console.WriteLine("Переплата составляет {0}", balance * -1);
            } else {
                Console.WriteLine("Долг отсутствует");
            }

        }

        public static void Main(string[] args)
        {

            PrintInfoAboutCreditAfterPayment(800);

        }
    }
}

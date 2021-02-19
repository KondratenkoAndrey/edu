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

        static int Add(int operand1, int operand2) {
            return operand1 + operand2;
        }
        static int Sub(int operand1, int operand2) {
            return operand1 - operand2;
        }

        static int Mul(int operand1, int operand2) {
            return operand1 * operand2;
        }

        static int Div(int operand1, int operand2) {
            return operand1 / operand2;
        }

        public static void Main(string[] args)
        {
            
            Console.Write("Введите 1 операнд: ");
            int operand1 = Convert.ToInt32(Console.ReadLine());

            Console.Write("Введите оператор: ");
            string sign = Console.ReadLine();

            Console.Write("Введите 2 операнд: ");
            int operand2 = Convert.ToInt32(Console.ReadLine());

            switch (sign)
            {
                case "+":
                    Console.WriteLine("{0} {1} {2} = {3}",
                                      operand1,
                                      sign,
                                      operand2,
                                      Add(operand1, operand2));
                    break;

                case "-":
                    Console.WriteLine("{0} {1} {2} = {3}",
                                      operand1,
                                      sign,
                                      operand2,
                                      Sub(operand1, operand2));
                    break;

                case "*":
                    Console.WriteLine("{0} {1} {2} = {3}",
                                      operand1,
                                      sign,
                                      operand2,
                                      Mul(operand1, operand2));
                    break;

                case "/":

                    if (operand2 != 0)
                    {
                        Console.WriteLine("{0} {1} {2} = {3}",
                                      operand1,
                                      sign,
                                      operand2,
                                      Div(operand1, operand2));
                    } else {
                        Console.WriteLine("Division by zero!");
                    }
                    break;

                default:
                    Console.WriteLine("Wrong operator");
                    break;
            }


        }
    }
}

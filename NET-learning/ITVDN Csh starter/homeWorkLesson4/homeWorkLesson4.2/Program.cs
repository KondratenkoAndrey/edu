//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace homeWorkLesson4
{
    class MainClass
    {
        static void PrintResultOfOperation(double operand1, 
                                           string sign, 
                                           double operand2,
                                           double result) {
            Console.WriteLine("{0} {1} {2} = {3}",
                                      operand1, sign, operand2, result);
        }

        public static void Main(string[] args)
        {
            double operand1 = 10, operand2 = 20;

            Console.Write("Введите оператор: ");

            string sign = Console.ReadLine();


            switch (sign)
            {
                case "+":
                    PrintResultOfOperation(operand1, 
                                           sign, 
                                           operand2, 
                                           operand1 + operand2);
                    break;

                case "-":
                    PrintResultOfOperation(operand1,
                                           sign,
                                           operand2,
                                           operand1 - operand2);
                    break;

                case "*":
                    PrintResultOfOperation(operand1,
                                           sign,
                                           operand2,
                                           operand1 * operand2);
                    break;

                case "/":
                    if (operand2 != 0) {
                        PrintResultOfOperation(operand1,
                                               sign,
                                               operand2,
                                               operand1 / operand2);
                    } else {
                        Console.WriteLine("Division by zero! Abort.");
                    }
                    break;
                
                default:
                    Console.WriteLine("Invalid operator");
                    break;
            }

        }
    }
}

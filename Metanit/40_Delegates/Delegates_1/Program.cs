//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace _Delegates_1
{
    class MainClass
    {
        delegate void Message(string str = "Default string");
        delegate int Operation(int x, int y); 

        public static void Main(string[] args)
        {
            Message message;
            //message = new Message(Print);
            message = Print;

            //message.Invoke();
            message();

            Operation operation = Add;
            int result = operation(4, 5);
            message($"Result of operation is {result}");

        }

        static int Add(int x, int y)
        {
            return x + y;
        }

        static int Multiply(int x, int y)
        {
            return x * y;
        }

        static void Print(string str)
        {
            Console.WriteLine(str);
        }
    }
}

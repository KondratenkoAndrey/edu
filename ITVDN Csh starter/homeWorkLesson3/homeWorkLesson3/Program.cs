//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko

/*
Создайте две переменных типа double с именами op1 и op2 и начальными 
значениями 4.6 и -34.72 соответственно. Затем создайте переменные sum, dif,
mul и div типа double и присвойте им значения суммы, разницы, произведения и 
деления значений op1 и op2 соответственно. После этого выведите в консоль 
значения sum, dif, mul и div по очереди, каждое – с новой строки, в таком формате: 
<операнд1> <знак операции> <операнд2> = <результат операции>. 
Используйте элементы форматирования. 
*/

using System;

namespace homeWorkLesson3
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            double op1 = 4.6, op2 = -34.72;
            double sum, dif, mul, div;

            sum = op1 + op2;
            dif = op1 - op2;
            mul = op1 * op2;
            div = op1 / op2;

            Console.WriteLine("{0} + {1} = {2}", op1, op2, sum);
            Console.WriteLine("{0} - {1} = {2}", op1, op2, dif);
            Console.WriteLine("{0} * {1} = {2}", op1, op2, mul);
            Console.WriteLine("{0} / {1} = {2}", op1, op2, div);
        
        }
    }
}

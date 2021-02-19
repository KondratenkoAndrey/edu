//
// Triangle.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace IsThisTriangle
{
    public class Triangle
    {

        public static bool IsTriangle(int a, int b, int c)
        {
            //треугольник возможно построить,
            //если сумма каждой пары сторон больше третьей стороны
            //и каждая сторона >0
            return (a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a);
        }

    }
}

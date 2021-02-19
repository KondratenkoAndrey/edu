//
// Calculator.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace StaticClasses_1
{
    public static class Calculator
    {

        public static double Add(double lh, double rh)
        {
            return lh + rh;
        }

        public static double Sub(double lh, double rh)
        {
            return lh - rh;
        }

        public static double Mul(double lh, double rh)
        {
            return lh * rh;
        }

        public static double Div(double lh, double rh)
        {
            
            if (rh == 0)
            {
                throw new DivideByZeroException();
            }

            return lh / rh;
        }

    }
}

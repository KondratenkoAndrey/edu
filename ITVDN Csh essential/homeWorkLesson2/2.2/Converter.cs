//
// Converter.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Converter
    {
        public Converter(double usd, double eur)
        {
            this.usd = usd;
            this.eur = eur;
        }

        double usd;
        double eur;

        public double RubToUsd(double rub)
        {
            return rub / usd;
        }

        public double RubToEur(double rub)
        {
            return rub / eur;
        }

    }

}

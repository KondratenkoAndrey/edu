//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Linq;

namespace Delegates_1
{

    delegate bool Validate(string s);

    class Validator
    {
        public Validate[] validators;

        public Validator(Validate[] validators)
        {
            this.validators = validators;
        }

        public bool IsValid(string s)
        {
            bool isValid = true;

            foreach (Validate validate in validators)
            {
                if (!validate(s))
                {
                    isValid = false;
                    break;
                }
            }

            return isValid;
        }
    }

    class MainClass
    {
        public static void Main(string[] args)
        {
            Validator emailValidator = new Validator(new Validate[] { MaxChar, IsEmail });
            string input = Console.ReadLine();
            if (emailValidator.IsValid(input))
            {
                Console.WriteLine("Valid");
            }
            else
            {
                Console.WriteLine("Not valid!");
            }
        }

        static bool MaxChar(string s)
        {
            return s.Length > 0 && s.Length < 255;
        }

        static bool IsEmail(string s)
        {
            if (s.Count(c => c == '@') != 1) return false;
            if (s.Contains(" "))             return false;
            if (!s.Contains("."))            return false;
            //...
            return true;
        }

    }
}

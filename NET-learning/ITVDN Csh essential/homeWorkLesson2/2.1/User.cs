//
// User.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class User
    {
        public User(string date,
                   string login,
                   string firstName,
                   string lastName,
                   int age)
        {
            this.date = date;
            Login = login;
            FirstName = firstName;
            LastName = lastName;
            Age = age;
        }

        string date;
        public string Login { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }

        public void PrintInfo()
        {
            Console.WriteLine("{0}: \n" +
                              "{1, 5}: {2}\n" +
                              "{3, 5}: {4} {5}\n" +
                              "{6, 5}: {7}", 
                              date, 
                              "login", Login, 
                              "name", FirstName, LastName, 
                              "age", Age);
        }
    }
}

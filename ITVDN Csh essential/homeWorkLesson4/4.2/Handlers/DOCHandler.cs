//
// DOCHandler.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class DOCHandler : AbstractHandler
    {

        public override void Open()
        {
            Console.WriteLine("DOC document is opened");
        }

        public override void Create()
        {
            Console.WriteLine("DOC document is created");
        }

        public override void Change()
        {
            Console.WriteLine("DOC document is changed");
        }

        public override void Save()
        {
            Console.WriteLine("DOC document is saved");
        }

    }
}

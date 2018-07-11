//
// XMLHandler.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class XMLHandler : AbstractHandler
    {

        public override void Open()
        {
            Console.WriteLine("XML document is opened");
        }

        public override void Create()
        {
            Console.WriteLine("XML document is created");
        }

        public override void Change()
        {
            Console.WriteLine("XML document is changed");
        }

        public override void Save()
        {
            Console.WriteLine("XML document is saved");
        }
    }
}

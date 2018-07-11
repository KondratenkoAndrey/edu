//
// TXTHandler.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class TXTHandler : AbstractHandler
    {

        public override void Open()
        {
            Console.WriteLine("TXT document is opened");
        }

        public override void Create()
        {
            Console.WriteLine("TXT document is created");
        }

        public override void Change()
        {
            Console.WriteLine("TXT document is changed");
        }

        public override void Save()
        {
            Console.WriteLine("TXT document is saved");
        }
    }
}

//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;

namespace RemoveTheMinimum
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            List<int> list = new List<int> {};
            List<int> changedList = Remover.RemoveSmallest(list);

        }
    }
}

//
// AbstractHandler.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    abstract public class AbstractHandler
    {

        abstract public void Open();
        abstract public void Create();
        abstract public void Change();
        abstract public void Save();

    }
}

//
// IRecordable.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Interfaces
{
    public interface IRecordable
    {

        void Record();
        void Pause();
        void Stop();

    }
}

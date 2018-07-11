//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Interfaces
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            //создание экземпляра класса Player
            Player somePlayer = new Player();

            //вызов метода Play из интерфейса IPlayable
            somePlayer.Play();

            //upcast к интерфесу IPlayable
            IPlayable somePlayerAsIPlayable = somePlayer as IPlayable;
            //после upcast возможно вызвать методы Pause и Stop интерфеса IPlayable
            somePlayerAsIPlayable.Pause();
            somePlayerAsIPlayable.Stop();

            //вызов метода Record из интерфейса IRecordable
            somePlayer.Record();

            //upcast к интерфесу IPlayable
            IRecordable somePlayerAsIRecordable = somePlayer as IRecordable;
            //после upcast возможно вызвать методы Pause и Stop интерфеса IPlayable
            somePlayerAsIRecordable.Pause();
            somePlayerAsIRecordable.Stop();
        }
    }
}

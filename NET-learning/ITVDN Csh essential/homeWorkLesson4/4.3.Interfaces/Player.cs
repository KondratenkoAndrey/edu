//
// Player.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Interfaces
{
    public class Player : IPlayable, IRecordable
    {
        #region IPlayable
        public void Play()
        {
            Console.WriteLine("Player began to play");
        }

        void IPlayable.Pause()
        {
            Console.WriteLine("Player paused playing");
        }

        void IPlayable.Stop()
        {
            Console.WriteLine("Player stopped playing");
        }
        #endregion

        #region IRecordable
        public void Record()
        {
            Console.WriteLine("Player began to record");
        }
        void IRecordable.Pause()
        {
            Console.WriteLine("Player paused recording");
        }

        void IRecordable.Stop()
        {
            Console.WriteLine("Player stopped recording");
        }
        #endregion

    }
}

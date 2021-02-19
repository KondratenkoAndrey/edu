//
// Pupil.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Pupil
    {
        public Pupil()
        {
        }

        public virtual void Study()
        {
            Console.WriteLine("The pupil are studying");
        }

        public virtual void Read()
        {
            Console.WriteLine("The pupil are reading");
        }

        public virtual void Write()
        {
            Console.WriteLine("The pupil are writing");
        }

        public virtual void Relax()
        {
            Console.WriteLine("The pupil are relaxing");
        }
    }
}

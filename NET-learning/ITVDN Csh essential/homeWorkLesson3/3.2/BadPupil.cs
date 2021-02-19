//
// BadPupil.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class BadPupil : Pupil
    {
        public BadPupil()
        {
        }

        public override void Study()
        {
            Console.WriteLine("The pupil are bad studying");
        }

        public override void Read()
        {
            Console.WriteLine("The pupil are bad reading");
        }

        public override void Write()
        {
            Console.WriteLine("The pupil are bad writing");
        }

        public override void Relax()
        {
            Console.WriteLine("The pupil are bad relaxing");
        }

    }
}

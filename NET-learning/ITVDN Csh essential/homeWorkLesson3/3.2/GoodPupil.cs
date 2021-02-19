//
// GoodPupil.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class GoodPupil : Pupil
    {
        public GoodPupil()
        {
        }

        public override void Study()
        {
            Console.WriteLine("The pupil are good studying");
        }

        public override void Read()
        {
            Console.WriteLine("The pupil are good reading");
        }

        public override void Write()
        {
            Console.WriteLine("The pupil are good writing");
        }

        public override void Relax()
        {
            Console.WriteLine("The pupil are good relaxing");
        }

    }
}

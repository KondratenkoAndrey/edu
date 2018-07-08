//
// ExcelentPupil.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class ExcelentPupil : Pupil
    {
        public ExcelentPupil()
        {
        }

        public override void Study()
        {
            Console.WriteLine("The pupil are excelent studying");
        }

        public override void Read()
        {
            Console.WriteLine("The pupil are excelent reading");
        }

        public override void Write()
        {
            Console.WriteLine("The pupil are excelent writing");
        }

        public override void Relax()
        {
            Console.WriteLine("The pupil are excelent relaxing");
        }

    }
}

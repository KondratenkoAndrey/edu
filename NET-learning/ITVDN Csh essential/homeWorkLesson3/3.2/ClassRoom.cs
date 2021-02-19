//
// ClassRoom.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class ClassRoom
    {
        public ClassRoom(Pupil[] pupils)
        {
            this.pupils = pupils;
        }

        Pupil[] pupils;

        public void PrintInfoAboutClass()
        {
            foreach (var pupil in pupils)
            {
                pupil.Study();
                pupil.Read();
                pupil.Write();
                pupil.Relax();
            }
        }

    }

}
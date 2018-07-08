//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Application
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Pupil[] arr = { 
                new BadPupil(), 
                new GoodPupil(), 
                new ExcelentPupil() };
            ClassRoom classRoom = new ClassRoom(arr);
            classRoom.PrintInfoAboutClass();
        }
       
    }
}

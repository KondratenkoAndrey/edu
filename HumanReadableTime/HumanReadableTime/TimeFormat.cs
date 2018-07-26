//
// TimeFormat.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace HumanReadableTime
{
    public static class TimeFormat
    {
        public static string GetReadableTime(int seconds)
        {
            int h = seconds / 3600;
            int m = seconds / 60 % 60;
            int s = seconds % 60;
            return h.ToString().PadLeft(2, '0') + ":" +
                    m.ToString().PadLeft(2, '0') + ":" +
                    s.ToString().PadLeft(2, '0');
        }
    }
}

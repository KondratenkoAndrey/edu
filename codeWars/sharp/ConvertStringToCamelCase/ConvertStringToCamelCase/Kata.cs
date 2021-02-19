using System;
using System.Text.RegularExpressions;

namespace ConvertStringToCamelCase
{
    class Kata
    {
        public static string ToCamelCase(string str)
        {
            return Regex.Replace(str, 
                                @"[-_]\w", 
                                m => m.ToString().Remove(0,1).ToUpper());
        }
    }
}

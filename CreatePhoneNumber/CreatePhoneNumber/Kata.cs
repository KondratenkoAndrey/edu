using System;
using System.Text.RegularExpressions;


namespace CreatePhoneNumber
{
    class Kata
    {
        public static string CreatePhoneNumber(int[] numbers)
        {
            return Regex.Replace(string.Join("", numbers),
                @"(?<code>\d{3})(?<firstPart>\d{3})(?<secondPart>\d{4})", 
                "(${code}) ${firstPart}-${secondPart}");
        }

    }
}

using System;

namespace CreatePhoneNumber
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Kata.CreatePhoneNumber(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 })); //"(123) 456-7890"
        }
    }
}

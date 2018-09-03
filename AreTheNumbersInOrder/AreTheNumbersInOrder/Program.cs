using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AreTheNumbersInOrder
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Kata.IsAscOrder(new int[] { 1, 1, 2, 4, 7, 19 }));// == true
            Console.WriteLine(Kata.IsAscOrder(new int[] { 1, 2, 3, 4, 5 }));// == true
            Console.WriteLine(Kata.IsAscOrder(new int[] { 1, 6, 10, 18, 2, 4, 20 }));// == false
            Console.WriteLine(Kata.IsAscOrder(new int[] { 9, 8, 7, 6, 5, 4, 3, 2, 1 }));// == false
        }
    }
}

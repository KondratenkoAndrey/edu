using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConvertStringToCamelCase
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Kata.ToCamelCase("the_stealth_warrior")); //theStealthWarrior
            Console.WriteLine(Kata.ToCamelCase("The-Stealth-Warrior")); //TheStealthWarrior
        }
    }
}

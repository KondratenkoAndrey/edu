using System;
using System.Linq;

namespace AreTheNumbersInOrder
{
    class Kata
    {
        public static bool IsAscOrder(int[] arr)
        {
            //without linq
            /*
            for (int i = 0; i < arr.Length - 1; i++)
            {
                if (arr[i] > arr[i + 1]) return false;
            }
            return true;
            */

            //with linq
            return arr.OrderBy(x => x).SequenceEqual(arr);
        }
    }
}

namespace Ninja
{
    public class Calc
    {
        public int Sum(int a, int b)
        {
            int sum = a + b;

            if (sum > 100)
            {
                return 100;
            }

            return sum < 0 ? 0 : sum;

        }
    }
}

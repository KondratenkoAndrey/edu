using NUnit.Framework;
using System;
using System.Collections.Generic;

namespace Ninja.Tests
{
    [TestFixture]
    class CalcTests
    {
        Calc calc;

        [OneTimeSetUp]
        public void Init()
        {
            calc = new Calc();
        }

        [Test]
        public void Sum_15And20_35Returned()
        {
            //arrange
            int a = 15, b = 20, expectedResult = 35;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        [Test]
        public void Sum_15AndMinus10_5Returned()
        {
            //arrange
            int a = 15, b = -10, expectedResult = 5;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        [Test]
        public void Sum_15AndMinus20_0Returned()
        {
            //arrange
            int a = 15, b = -20, expectedResult = 0;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        [Test]
        public void Sum_15And100_100Returned()
        {
            //arrange
            int a = 15, b = 100, expectedResult = 100;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        [Test]
        public void Sum_0And0_0Returned()
        {
            //arrange
            int a = 0, b = 0, expectedResult = 0;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        [Test]
        public void Sum_0And100_100Returned()
        {
            //arrange
            int a = 0, b = 100, expectedResult = 100;

            //act
            var result = calc.Sum(a, b);

            //assert
            Assert.That(result, Is.EqualTo(expectedResult));
        }

        private static IEnumerable<TestCaseData> SumCalcTestData
        {
            get
            {
                Random rnd = new Random();
                for (int i = 0; i < 1000; i++)
                {
                    yield return new TestCaseData(rnd.Next(-100, 100), rnd.Next(-100, 100));
                }
            }
        }

        [Test, TestCaseSource(nameof(SumCalcTestData))]
        public void Sum_RandomTestCases_Between0And100Returned(int a, int b)
        {
            //arrange

            //act
            var result = calc.Sum(a, b);

            Console.WriteLine($"a = {a}; b = {b}; result = {result}");

            //assert
            Assert.That(result, Is.GreaterThanOrEqualTo(0).And.LessThanOrEqualTo(100));
        }


    }
}

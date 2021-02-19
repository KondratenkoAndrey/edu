//
// Test.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using NUnit.Framework;
using System;
namespace FindTheOddIntTests
{
    [TestFixture()]
    public class KataTests
    {
        [Test()]
        public void TestCase()
        {
            Assert.AreEqual(5, FindTheOddInt.Kata.find_it(new[] { 20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5 }));
        }
    }
}

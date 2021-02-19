//
// Test.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using NUnit.Framework;
using System;
namespace FindTheMissingLetterTests
{
    [TestFixture()]
    public class KataTests
    {
        [Test()]
        public void TestCase()
        {
            //arrange
            char[] firstArray = new[] { 'a', 'b', 'c', 'd', 'f' };
            char firstExpected = 'e';
            char[] secondArray = new[] { 'O', 'Q', 'R', 'S' };
            char secondExpected = 'P';

            //act
            char firstActual = FindTheMissingLetter.Kata.FindMissingLetter(firstArray);
            char secondActual = FindTheMissingLetter.Kata.FindMissingLetter(secondArray);

            //assert
            Assert.AreEqual(firstExpected, firstActual);
            Assert.AreEqual(secondExpected, secondActual);
        }
    }
}

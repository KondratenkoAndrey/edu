//
// KataTests.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using NUnit.Framework;
using System;
namespace FirstNonRepeatingCharacter
{
    [TestFixture()]
    public class KataTests
    {
        [Test()]
        public void BasicTests()
        {

            Assert.AreEqual("a", Kata.FirstNonRepeatingLetter("a"));
            Assert.AreEqual("t", Kata.FirstNonRepeatingLetter("stress"));
            Assert.AreEqual("e", Kata.FirstNonRepeatingLetter("moonmen"));
            Assert.AreEqual("T", Kata.FirstNonRepeatingLetter("sTreSS"));
            Assert.AreEqual("b", Kata.FirstNonRepeatingLetter("aAAb"));

        }
    }
}

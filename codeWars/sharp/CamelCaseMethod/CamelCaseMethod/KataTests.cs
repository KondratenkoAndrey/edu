//
// KataTests.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using NUnit.Framework;
using System;
namespace CamelCaseMethod
{
    [TestFixture()]
    public class KataTests
    {
        [Test()]
        public void BasicTests()
        {

            Assert.AreEqual("TestCase", "test case".CamelCase());
            Assert.AreEqual("CamelCaseWord", "camel case word".CamelCase());
            Assert.AreEqual("CamelCaseWord", "camel cASe worD".CamelCase());
            Assert.AreEqual("Camel", "caMEl".CamelCase());
            Assert.AreEqual("C", "c".CamelCase());
            Assert.AreEqual("", "".CamelCase());
            Assert.AreEqual("", " ".CamelCase());
            Assert.AreEqual("", "   ".CamelCase());
            Assert.AreEqual("AB", "a   b".CamelCase());


        }
    }
}

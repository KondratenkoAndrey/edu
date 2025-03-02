﻿using System;

namespace Adapter
{
    // Целевой класс объявляет интерфейс, с которым может работать клиентский
    // код.
    public interface ITarget
    {
        string GetRequest();
    }

    // Адаптируемый класс содержит некоторое полезное поведение, но его
    // интерфейс несовместим  с существующим клиентским кодом. Адаптируемый
    // класс нуждается в некоторой доработке,  прежде чем клиентский код сможет
    // его использовать.
    class Adaptee
    {
        public string GetSpecificRequest()
        {
            return "Specific request.";
        }
    }

    // Адаптер объектов делает интерфейс Адаптируемого класса совместимым с целевым
    // интерфейсом.
    class ObjectAdapter : ITarget
    {
        private readonly Adaptee _adaptee;

        public ObjectAdapter(Adaptee adaptee)
        {
            this._adaptee = adaptee;
        }

        public string GetRequest()
        {
            return $"This is '{this._adaptee.GetSpecificRequest()}'";
        }
    }

    //Адаптер классов
    class ClassAdapter : Adaptee, ITarget
    {
        public string GetRequest()
        {
            return base.GetSpecificRequest();
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Adaptee adaptee = new Adaptee();
            ITarget target = new ObjectAdapter(adaptee);

            Console.WriteLine("Adaptee interface is incompatible with the client.");
            Console.WriteLine("But with adapter client can call it's method.");

            Console.WriteLine(target.GetRequest());

            ITarget target2 = new ClassAdapter();
            Console.WriteLine(target2.GetRequest());
        }
    }
}
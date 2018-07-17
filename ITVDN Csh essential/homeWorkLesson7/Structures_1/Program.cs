using System;

namespace Structures_1
{

    struct Notebook
    {

        public Notebook(string model, string brand, double price)
        {
            this.model = model;
            this.brand = brand;
            this.price = price;
        }

        private string model;
        private string brand;
        private double price;

        public string Model
        {
            get
            {
                return model;
            }
        }

        public string Brand
        {
            get
            {
                return brand;
            }
        }

        public double Price
        {
            get
            {
                return price;
            }
        }

        public void PrintInfo()
        {
            string info = string.Format("Notebook {0} {1}, price: {2:f2}",
                brand,
                model,
                price);
            Console.WriteLine(info);
        }

    }

    class Program
    {
        static void Main(string[] args)
        {
            //Notebook someNote;
            //someNote.PrintInfo();

            Notebook someNote = new Notebook();
            someNote.PrintInfo();

            Notebook anotherNotebook = new Notebook("macbook air", "Apple", 999.99);
            anotherNotebook.PrintInfo();

        }
    }
}

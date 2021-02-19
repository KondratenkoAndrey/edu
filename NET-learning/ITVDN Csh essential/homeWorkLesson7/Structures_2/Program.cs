using System;

namespace Structures_2
{

    struct Train
    {
        
        public Train(string destinationName, int trainNumber, string departureTime)
        {
            this.DestinationName = destinationName;
            this.TrainNumber = trainNumber;
            this.DepartureTime = departureTime;
        }

        public string DestinationName { get; }
        public int TrainNumber { get; }
        public string DepartureTime { get; }

    }

    class Program

    {
        static void Main(string[] args)
        {

            Train[] trains = new Train[3];

            Console.WriteLine(trains[1].DepartureTime);

            for (int i = 0; i < trains.Length; i++)
            {
                Console.WriteLine("Введите данные поезда ({0} из {1})", i, trains.Length);

                Console.Write("Введите пункт назначения: ");
                string destinationName = Console.ReadLine();

                Console.Write("Введите номер поезда: ");
                int trainNumber = Int32.Parse(Console.ReadLine());

                Console.Write("Введите время отправления в формате \"\": ");
                string departureTime = Console.ReadLine();

                trains[i] = new Train(destinationName, trainNumber, departureTime);
            }

        }
    }
}

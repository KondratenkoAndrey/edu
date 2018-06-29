//
// Address.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
namespace Application
{
    public class Address
    {
        public Address()
        {
        }

        public Address(int index,
                      string country,
                      string city,
                      string street,
                      int house,
                      int apartment)
        {
            Index = index;
            Country = country;
            City = city;
            Street = street;
            House = house;
            Apartment = apartment;
        }

        public int Index { get; set; }
        public string Country { get; set; }
        public string City { get; set; }
        public string Street { get; set; }
        public int House { get; set; }
        public int Apartment { get; set; }

        public string getString()
        {
            return string.Format("{0}, {1}, {2}, {3} street, house {4}, apartment {5}",
                             Index,
                             Country,
                             City,
                             Street,
                             House,
                             Apartment);
        }


    }
}

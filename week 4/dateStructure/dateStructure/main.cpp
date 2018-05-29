//
//  main.cpp
//  dateStructure
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>

using namespace std;

struct Day {
    explicit Day(int newValue) { //explicit обязательное указание типа при создании объекта
        value = newValue;
    }
    int value;
};
struct Month {
    explicit Month (int newValue) {
        value = newValue;
    }
    int value;
};
struct Year {
    explicit Year(int newValue) {
        value = newValue;
    }
    int value;
};
struct Date {
    Date(Day newDay, Month newMonth, Year newYear) {
        day = newDay.value;
        month = newMonth.value;
        year = newYear.value;
    }
    int day;
    int month;
    int year;
};

void printDate(const Date& date) {
    cout << date.day << "." << date.month << "." << date.year << endl;
}

int main(int argc, const char * argv[]) {

    Date someDate = {Day(10), Month(11), Year(12)};
    printDate(someDate);
    
    return 0;
}

//
//  main.cpp
//  exceptions
//
//  Created by Андрей Кондратенко on 05.06.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <sstream>
#include <iomanip>
#include <exception>

using namespace std;

struct Date {
    int year;
    int month;
    int day;
};

void EnsureNextSymbolAndSkip(stringstream& stream) {
    if (stream.peek() != '/') { //просмотр следующего символа
        stringstream ss;
        ss << "expected \"/\", but has \"" << char(stream.peek()) << "\"";
        throw runtime_error(ss.str());
        
    }
}

Date ParseDate(const string& s) {
    stringstream stream(s);
    Date date;
    
    stream >> date.year;
    EnsureNextSymbolAndSkip(stream);
    stream.ignore(1);
    stream >> date.month;
    EnsureNextSymbolAndSkip(stream);
    stream.ignore(1);
    stream >> date.day;
    return date;
}

int main(int argc, const char * argv[]) {

    string someStringDate = "2017d01/25";
    
    try {
        Date someDate = ParseDate(someStringDate);
        cout << setw(2) << setfill('0') << someDate.day << "."
        << setw(2) << setfill('0') << someDate.month << "."
        << someDate.year << endl;
    } catch (exception& ex) {
        cout << "exception happens: " << ex.what() << endl;
    }

    
    return 0;
}

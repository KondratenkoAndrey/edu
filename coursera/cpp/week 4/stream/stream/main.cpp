//
//  main.cpp
//  stream
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>

using namespace  std;

void readAll(const string& file) {
    ifstream input(file);
    if (input.is_open()) {
        string line;
        while (getline(input, line)) {
            cout << line << endl;
        }
    } else {
        cout << "error!" << endl;
    }
}

int main(int argc, const char * argv[]) {

    ifstream input("/Users/andrey/Documents/Dev/courseraCPP/week 4/stream/stream/hello.txt");
    string line;
    
    if (input.is_open()) {
        while (getline(input, line)) {
            cout << line << endl;
        }
        cout << "done!" << endl;
    } else {
        cout << "error!" << endl;
    }
    
    ifstream inputDate("/Users/andrey/Documents/Dev/courseraCPP/week 4/stream/stream/date.txt");
    string year, month, day;
    
    if (inputDate.is_open()) {
        getline(inputDate, year, '-');
        getline(inputDate, month, '-');
        getline(inputDate, day, '-');
        cout << year << " " << month << " " << day << endl;
    } else {
        cout << "error!" << endl;
    }
    
    ifstream inputDateInInt("/Users/andrey/Documents/Dev/courseraCPP/week 4/stream/stream/date.txt");
    
    int intYear = 0;
    int intMonth = 0;
    int intDay = 0;
    
    if (inputDateInInt.is_open()) {
        inputDateInInt >> intYear;
        inputDateInInt.ignore(1);
        inputDateInInt >> intMonth;
        inputDateInInt.ignore(1);
        inputDateInInt >> intDay;
        inputDateInInt.ignore(1);
        cout << intYear << " " << intMonth << " " << intDay << endl;
    } else {
        cout << "error!" << endl;
    }
    
    const string file = "/Users/andrey/Documents/Dev/courseraCPP/week 4/stream/stream/output.txt";
    ofstream output(file, ios::app); //ios::app -  дописать файл
    output << "hello" << endl;
    readAll(file);


    
    return 0;
}

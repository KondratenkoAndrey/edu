//
//  main.cpp
//  vectors
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

void PrintStringVector (const vector<string>& v) {
    for (string s : v) {
        cout << s << " ";
    }
}

void PrintIntVector (const vector<int>& v) {
    for (auto s : v) {
        cout << s << " ";
    }
}

void PrintBoolVector (const vector<bool>& v) {
    int i = 0;
    for (auto s : v) {
        cout << i << ":" << s << endl;
        i++;
    }
}

int main(int argc, const char * argv[]) {

    int n;
    cout << "Введите n: ";
    cin >> n;

    vector<string> v(n);

    cout << "введите " << n << " элементов вектора 1:" << endl;
 
    for (string& s : v) {
        cin >> s;
    }

    cout << "Введенный вектор 1: " << endl;
    PrintStringVector(v);
    cout << endl;

    int i = 0;
    vector<string> v2;
    cout << "введите " << n << " элементов вектора 2:" << endl;
    while (i < n) {
        string s;
        cin >> s;
        v2.push_back(s);
        ++i;
        cout << "Текущй размер вектора 2: " << v2.size() << endl;
    }
    cout << "Введенный вектор 2: " << endl;
    PrintStringVector(v2);
    cout << endl;

    vector<int> daysInMonths = {31, 28, 31, 30, 31};
    bool leapYear = true;
    if (leapYear) {
        daysInMonths[1] = 29;
    }
    PrintIntVector(daysInMonths);
    cout << endl;
    
    vector<bool> isHoliday(28, false); //28 длинна вектора, false - значение по умолчанию
    isHoliday[22] = true;
    
//    isHoliday.resize(31);  не очищает вектор
    isHoliday.assign(31, false); //очищает ветор и заполняет по умолчанию
    isHoliday[7] = true;
    
//    isHoliday.clear() очищет вектор
    
    PrintBoolVector(isHoliday);
    cout << endl;
    
    return 0;
}

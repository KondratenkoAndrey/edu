//
//  main.cpp
//  overloading
//
//  Created by Андрей Кондратенко on 31.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <sstream>
#include <iomanip>

using namespace std;

struct Duration {
    int hour;
    int minute;
    Duration(int h = 0, int m = 0) {
        hour = h;
        minute = m;
    }
};

istream& operator>>(istream& stream, Duration& duration) {
    stream >> duration.hour;
    stream.ignore(1);
    stream >> duration.minute;
    return stream;
}

ostream& operator<<(ostream& stream, const Duration& duration) {
    stream << setfill('0');
    stream << setw(2) << duration.hour << ":"
    << setw(2) << duration.minute;
    return stream;
}

int main(int argc, const char * argv[]) {

    stringstream durSS("02:50");
    Duration someDuration;

    durSS >> someDuration;
    cout << someDuration << endl;
    
    return 0;
}

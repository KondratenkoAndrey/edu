//
//  main.cpp
//  homeWorkFormattedStream
//
//  Created by Андрей Кондратенко on 30.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

int main(int argc, const char * argv[]) {

//    const string file = "input.txt";
    const string file = "/Users/andrey/Documents/Dev/courseraCPP/week 4/homeWorkFormattedStream/homeWorkFormattedStream/input.txt";
    
    ifstream inputStream(file);
    string value;

    if (inputStream.is_open()) {
        double value;
        cout << fixed << setprecision(3);
        while (inputStream >> value) {
            cout << value << endl;
        }
    } else {
        cout << "Error read file: " << file << endl;
    }
    
    return 0;
}

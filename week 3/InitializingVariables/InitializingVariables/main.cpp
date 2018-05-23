//
//  main.cpp
//  InitializingVariables
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

void printInt() {
    int x;
    cout << x << endl;
}

void printDouble() {
    double pi = 3.14;
    cout << pi << endl;
}

void printParity(int x) {
//    string parity;
//    if (x % 2 == 0) {
//        parity = "even";
//    } else {
//        parity = "odd";
//    }
    
    string parity = x % 2 == 0 ? "even" : "odd"; // тернарный оператор
    cout << x << " is " << parity << endl;
}

string getPositivity(int x) {
    if (x > 0) {
        return "positive";
    } else if (x < 0) {
        return"negative";
    } else {
        return"zero";
    }
}

void printPositivity(int x) {
    string positivity = getPositivity(x);
    cout << x << " is " << positivity << endl;
}

int main(int argc, const char * argv[]) {

    printInt();
    printDouble();
    printInt(); //значение неинициализированной переменной не определено
    
    printParity(5);
    printPositivity(0);
    printPositivity(-5);
    
    return 0;
}

//
//  main.cpp
//  operationsDivisionIncrement
//
//  Created by Андрей Кондратенко on 09.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {

    int a = 11;
    double b = 3;
    cout << a / b << endl;
    
    int x = 5;
    x += 2;
    x -= 2;
    x *= 2;
    x /= 2;
    cout << x << endl;
    
    int c = 5;
    int cPost = c--;
    int cPref = --c;
    cout << "cPost = " << cPost << endl;
    cout << "cPred = " << cPref<< endl;
    
    return 0;
}

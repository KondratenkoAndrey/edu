//
//  main.cpp
//  homeWorkMaxDivisior
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 В stdin даны два натуральных числа. Найти их наибольший общий делитель.
 Пример
 stdin    stdout
 25 27    1
 12 16    4
 13 13    13
*/

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {

    int a, b, nod;
    cin >> a >> b;
    
    nod = max(a, b);
    for (int i = min(a, b); i > 0; i--) {
        if (a % i == 0 && b % i == 0) {
            nod = i;
            break;
        }
    }
    cout << nod;
    
    return 0;
}

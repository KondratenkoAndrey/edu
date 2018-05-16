//
//  main.cpp
//  homeWorkEquation
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <cmath>

using namespace std;

int main(int argc, const char * argv[]) {

    double a, b, c, d;
    
    cin >> a >> b >> c;
    
    d = b * b - 4 * a * c;
    
    if (a == 0 && b == 0) {
        
    } else if (a == 0) {
        cout << (-c) / b;
    } else if (d == 0) {
        cout << (-b) / (2 * a);
    } else if (d > 0){
        cout << ((-b) + sqrt(d)) / (2 * a) << " " << ((-b) - sqrt(d)) / (2 * a);
    }
    
    return 0;
}

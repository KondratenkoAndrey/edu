//
//  main.cpp
//  homeWorkDivision
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {

    int a, b;
    
    cin >> a >> b;
    
    if (b == 0) {
        cout << "Impossible";
    } else {
        cout << a / b;
    }
    
    return 0;
}

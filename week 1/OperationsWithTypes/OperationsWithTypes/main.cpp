//
//  main.cpp
//  OperationsWithTypes
//
//  Created by Andrey Kondratenko on 08.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {
    
    int x = 4;
    int y = 5;
    
    cout << (x + y) * (x - y) << endl;;
    
    if (x != y) {
        cout << x << " not equal " << y << endl;
    } else {
        cout << x << " equal " << y << endl;
    }
    
    string sx = "abc";
    string sy = "def";
    
    if (sx != sy) {
        cout << sx << " not equal " << sy << endl;
    } else {
        cout << sx << " equal " << sy << endl;
    }
    
    if (sx < sy) {
        cout << sx << " less " << sy << endl;
    } else {
        cout << sx << " not less " << sy << endl;
    }
    
    return 0;
}

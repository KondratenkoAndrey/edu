//
//  main.cpp
//  CountCountIfLambda
//
//  Created by Андрей Кондратенко on 20.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

bool gt2(int x) {
    if (x > 2) {
        return true;
    }
    return false;
}

bool lt2(int x) {
    if (x < 2) {
        return true;
    }
    return false;
}

int main(int argc, const char * argv[]) {

    vector<int> vector {
        1, 3, 2, 4, 5, 2
    };
    
    cout << "Nubers eqaual 2: " << count(begin(vector), end(vector), 2) << endl;
    cout << "Nubers more than 2: " << count_if(begin(vector), end(vector), gt2) << endl;
    cout << "Nubers less than 2: " << count_if(begin(vector), end(vector), lt2) << endl;
    //using lambda
    int y = 2;
    
    cout << "Nubers more than " << y << " using lambda: " << count_if(begin(vector), end(vector), [y](int x) {
        if (x > y) {
            return true;
        }
        return false;
    }) << endl;
    
    cout << "Nubers more than " << y << " using lambda: " << count_if(begin(vector), end(vector), [y](int x) {return x > y;}) << endl;
    
    return 0;
}

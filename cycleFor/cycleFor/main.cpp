//
//  main.cpp
//  cycleFor
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <map>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    vector<int> vector = {1, 4, 6, 8, 10};
    int sum = 0;
    for (auto i : vector) {
        sum += i;
    }
    cout << "sum is " << sum << endl;
    
    map<string, int> map = {{"a", 1}, {"b", 2}, {"c", 3}};
    sum = 0;
    string concat;
    for (auto i : map) {
        concat += i.first;
        sum += i.second;
    }
    cout << "sum is " << sum << endl;
    cout << "concat is " << concat << endl;
    
    string c = "asdfasdas";
    int i = 0;
    for (auto d : c) {
        if (d == 'a') {
            cout << "index of 'a' is " << i << endl;
        }
        ++i;
    }

    cout << endl;
    
    for (int i = 0; i <= c.length(); i++) {
        if (c[i] == 'a') {
            cout << "index of 'a' is " << i << endl;
            break;
        }
    }
    
    return 0;
}










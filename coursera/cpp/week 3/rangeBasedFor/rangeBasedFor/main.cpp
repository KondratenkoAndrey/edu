//
//  main.cpp
//  rangeBasedFor
//
//  Created by Андрей Кондратенко on 22.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

void printVector(const vector<int>& vector, const string& titile) {
    cout << titile << ": ";
    for (auto item : vector) {
        cout << item << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {

    vector<int> v {
        1, 3, 2, 5, 4
    };
    
    printVector(v, "Initial vector            ");
    
    for (auto i : v) {
        ++i;
    }
    
    printVector(v, "Increased vector without &");
    
    for (auto& i : v) {
        ++i;
    }
    
    printVector(v, "Increased vector with &   ");
    
    return 0;
}

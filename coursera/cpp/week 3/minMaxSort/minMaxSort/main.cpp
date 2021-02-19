//
//  main.cpp
//  minMaxSort
//
//  Created by Андрей Кондратенко on 20.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>

using namespace std;

int userMin(const int& a, const int& b) {
    if (a < b) {
        return a;
    }
    return b;
}

int userMax(const int& a, const int& b) {
    if (a > b) {
        return a;
    }
    return b;
}

void printVector(const vector<int>& vector, const string& titile) {
    cout << titile << ": ";
    for (auto item : vector) {
        cout << item << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {

    //using self function
    cout << "min: " << userMin(2, 3) << endl;
    cout << "max: " << userMax(2, 3) << endl;
    
    //using algorithm library
    cout << "min: " << min(2, 3) << endl;
    cout << "max: " << max(2, 3) << endl;
    
    string s1 = "abc";
    string s2 = "bca";
    
    cout << "min: " << min(s1, s2) << endl;
    cout << "max: " << max(s1, s2 ) << endl;
    
    vector<int> v {
        1, 3, 2, 5, 4
    };
    printVector(v, "Initial vector");
    
    sort(begin(v), end(v));
    printVector(v, "Sorted vector");
    
    return 0;
}

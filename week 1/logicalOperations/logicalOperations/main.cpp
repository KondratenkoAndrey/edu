//
//  main.cpp
//  logicalOperations
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>
#include <map>

using namespace std;

int main(int argc, const char * argv[]) {

    int a = 3;
    int b = 5;
    if (a < b) {
        cout << "a is less than b" << endl;
    }
    
    string s1 = "fire";
    string s2 = "water";
    if (s1 < s2) {
        cout << "s1 is less than s2" << endl;
    }
    
    string s3 = "bird";
    string s4 = "bird";
    if (s3 == s4) {
        cout << "s3 is equal to s4" << endl;
    } else {
        cout << "s3 isn't equal to s4" << endl;
    }
    
    vector<string> v1 = {"fire", "water"};
    vector<string> v2 = {"fog", "air"};
    if (v1 == v2) {
        cout << "v1 is equal to v2" << endl;
    } else {
        cout << "v1 isn't equal to v2" << endl;
    }
    
    map<string, int> m1;
    m1["one"] = 1;
    map<string, int> m2;
    m2["two"] = 2;
    if (m1 == m2) {
        cout << "m1 is equal to m2" << endl;
    } else {
        cout << "m1 isn't equal to m2" << endl;
    }
    
    string s5 = "abc";
    if ((!s5.empty() && s5 < "zzz") || s5.length() < 10) {
        cout << "true" << endl;
    }
    
    return 0;
}

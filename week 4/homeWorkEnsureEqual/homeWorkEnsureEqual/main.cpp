//
//  main.cpp
//  homeWorkEnsureEqual
//
//  Created by Андрей Кондратенко on 05.06.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>

using namespace std;

void EnsureEqual(const string& left, const string& right) {
    if (left != right) {
        throw runtime_error(left + " != " + right);
    }
}

int main(int argc, const char * argv[]) {

    try {
        EnsureEqual("C++ White", "C++ White");
        EnsureEqual("C++ White", "C++ Yellow");
    } catch (runtime_error& e) {
        cout << e.what() << endl;
    }
    
    return 0;
}

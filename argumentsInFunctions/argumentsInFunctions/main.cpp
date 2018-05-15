//
//  main.cpp
//  argumentsInFunctions
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

void printWords(vector<string> words) {
    for (auto w : words) {
        cout << w << " ";
    }
    cout << endl;
}

void changeInt(int x) {
    x = 42;
}

int main(int argc, const char * argv[]) {

    printWords({"fire", "air", "water"});

    int a = 5;
    changeInt(a);
    cout << a;

    cout << endl;
    return 0;
}

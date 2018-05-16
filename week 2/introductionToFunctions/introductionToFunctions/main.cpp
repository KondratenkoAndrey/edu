//
//  main.cpp
//  introductionToFunctions
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int sum(int x, int y) {
    return x + y;
}

bool contains(vector<string> words, string w) {
    for (auto s : words) {
        if (s == w) {
            return true;
        }
    }
    return false;
}

int main(int argc, const char * argv[]) {

    int x, y;
    cin >> x >> y;
    cout << sum(x, y) << endl;
    
    cout << contains({"fire", "air", "water"}, "water") << endl;
    
    return 0;
}



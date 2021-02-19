//
//  functions.cpp
//  homeWorkReverseOfSequence
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

//#include "functions.hpp"
#include <vector>

using namespace std;

void Reverse(vector<int>& v) {
    int tmp = 0;
    for (int i = 0; i < v.size() / 2; i++) {
        tmp = v[i];
        v[i] = v[v.size() - i - 1];
        v[v.size() - i - 1] = tmp;
    }
}

vector<int> Reversed(const vector<int>& v) {
    vector<int> reversedVector;
    for (long i = v.size() - 1; i >=0; i--) {
        reversedVector.push_back(v[i]);
    }
    return reversedVector;
}

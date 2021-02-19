//
//  main.cpp
//  homeWorkSortingIntegersByModule
//
//  Created by Андрей Кондратенко on 22.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

void printVector(const vector<int>& vector) {
    for (auto item : vector) {
        cout << item << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {
    
    int n = 0;
    cin >> n;
    
    vector<int> vectorOfNumbers(n);
    
    for (auto& number : vectorOfNumbers) {
        cin >> number;
    }
    
    sort(begin(vectorOfNumbers), end(vectorOfNumbers),[](int i, int j){
        return abs(i) < abs(j);
    });
    
    printVector(vectorOfNumbers);
    
    return 0;
}

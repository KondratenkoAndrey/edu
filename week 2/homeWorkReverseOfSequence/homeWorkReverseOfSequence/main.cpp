//
//  main.cpp
//  homeWorkReverseOfSequence
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 Реализуйте функцию void Reverse(vector<int>& v), которая переставляет элементы вектора в обратном порядке.
 Пример
 vector<int> numbers = {1, 5, 3, 4, 2};
 Reverse(numbers);
 // numbers должен оказаться равен {2, 4, 3, 5, 1}
 */

#include <iostream>
#include "functions.hpp"
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {

    vector<int> vectorOfNumbers = {1, 5, 3, 4, 2};
    
    cout << "Normal vector: ";
    for (auto x : vectorOfNumbers) {
        cout << x << " ";
    }
    cout << endl;
    
    Reverse(vectorOfNumbers);
    
    cout << "Reverse vector: ";
    for (auto x : vectorOfNumbers) {
        cout << x << " ";
    }
    cout << endl;
    
    vector<int> newReversedVector = Reversed(vectorOfNumbers);
    
    cout << "ReverseD vector: ";
    for (auto x : newReversedVector) {
        cout << x << " ";
    }
    cout << endl;
    
    return 0;
}

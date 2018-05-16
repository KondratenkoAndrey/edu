//
//  main.cpp
//  conditionsAndCycles
//
//  Created by Андрей Кондратенко on 09.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

/*
программа
по курсу
c++
 */

int main(int argc, const char * argv[]) {

    int x = 4;
    int y = 5;
    
    if (x == y) {
        cout << "equal\n";
    } else {
        cout << "not equal\n";
    }
    
    vector<int> nums = {1, 2, 3, 4, 5};
    for (auto num : nums) {
        cout << num << " ";
    }
    cout << endl;
    
    int n = 5;
    //sum хранит искомую сумму
    int sum = 0;
    
    for (int i = 1; i <= n; ++i) {
        sum += i;
    }
    cout << "sum over For from 1 to " << n << " is " << sum << endl;
    
    sum = 0;
    int i = 1;
    while (i <= n) {
        sum += i;
        ++i;
    }
    cout << "sum over While from 1 to " << n << " is " << sum << endl;
    
    string word = "qwe";
    cout << "lenth of string: " << word << " is " << word.size() << endl;
    
    return 0;
}

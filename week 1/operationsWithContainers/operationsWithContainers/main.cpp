//
//  main.cpp
//  operationsWithContainers
//
//  Created by Andrey Kondratenko on 08.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(int argc, const char * argv[]) {
    
    string s = "abcdefg";
    for (char c : s) {
        cout << c << ",";
    }
    cout << endl;
    
    vector<int> nums = {1, 5, 2, 3, 5};
    for (int i : nums) {
        cout << i << ",";
    }
    cout << endl;
    
    vector<string> strings = {"1", "5", "2", "3", "5+", "two", "one"};
    for (auto a : strings) {
        cout << a << ",";
    }
    cout << endl;
    
    uint64_t quantity = 0;
    for (int i : nums) {
        if (i == 5) {
            ++quantity;
        }
    }
    cout << "In nums there are " << quantity << " fives by for" << endl;

    quantity = count(begin(nums), end(nums), 5);
    cout << "In nums there are " << quantity << " fives by algorithm" << endl;

    sort(begin(nums), end(nums));
    cout << "Sorted nums are ";
    for (int i : nums) {
        cout << i << ",";
    }
    cout << endl;
    
    sort(begin(strings), end(strings));
    cout << "Sorted string are ";
    for (auto c : strings) {
        cout << c << ",";
    }
    cout << endl;
    
    return 0;
}

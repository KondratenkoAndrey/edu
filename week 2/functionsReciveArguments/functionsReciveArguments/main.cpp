//
//  main.cpp
//  functionsReciveArguments
//
//  Created by Андрей Кондратенко on 11.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

void swap(int& x, int& y) {
    
    int tmp = x;
    x = y;
    y = tmp;
    
}

void sortVector(vector<int>& v) {
    sort(begin(v), end(v));
}

int main(int argc, const char * argv[]) {

    int a = 1;
    int b = 2;
    swap(a, b);
    cout << "a = " << a << endl << "b = " << b << endl;
    
    vector<int> nums = {3, 6, 1, 2, 0, 2};
    
    //sort(begin(nums), end(nums));
    sortVector(nums);
    
    for (auto x : nums) {
        cout << x << " ";
    }
    
    cout << endl;
    return 0;
}

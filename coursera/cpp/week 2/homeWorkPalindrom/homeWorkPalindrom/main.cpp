//
//  main.cpp
//  homeWorkPalindrom
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "palindrom.hpp"
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {

    cout << IsPalindrom("madam") << endl;
    
    vector<string> v = {"weew", "bro", "code"};
    vector<string> newV = PalindromFilter(v, 4);
    
    for (auto s : newV) {
        cout << s << " ";
    }

    cout << endl;
    return 0;
}

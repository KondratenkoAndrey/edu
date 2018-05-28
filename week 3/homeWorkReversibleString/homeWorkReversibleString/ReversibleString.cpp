//
//  ReversibleString.cpp
//  homeWorkReversibleString
//
//  Created by Андрей Кондратенко on 28.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>
#include <string>
#include <algorithm>

using namespace std;

class ReversibleString {
    
public:
    ReversibleString() {
        myString = "";
    };
    ReversibleString(const string& string) {
        myString = string;
    };
    
    void Reverse() {
        reverse(begin(myString), end(myString));
    };
        
    string ToString() const {
        return myString;
    };
    
private:
    string myString;
    
};

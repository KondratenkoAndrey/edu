//
//  palindrom.cpp
//  homeWorkPalindrom
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <string>
#include <vector>

using namespace std;

bool IsPalindrom(string str) {
    
    string reversString = "";
    
    for (long i = str.length() - 1; i >= 0; i--) {
        reversString += str[i];
    }
    
    return (str == reversString)?1:0;
    
}

vector<string> PalindromFilter(vector<string> words, int minLength) {
    
    vector<string> v;
    
    for (string s : words) {
        if (IsPalindrom(s) && s.length() >= minLength) {
            v.insert(end(v), s);
        }
    }
    
    return v;
    
}

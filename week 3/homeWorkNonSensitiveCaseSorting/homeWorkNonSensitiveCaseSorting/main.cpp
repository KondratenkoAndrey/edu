//
//  main.cpp
//  homeWorkNonSensitiveCaseSorting
//
//  Created by Андрей Кондратенко on 22.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;

void printMap(const map<string, string>& mapOfString) {
    for (const auto& item : mapOfString) {
        cout << item.second << " ";
    }
    cout << endl;
}

void printVector(const vector<string>& vectorOfString) {
    for (const auto& str : vectorOfString) {
        cout << str << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {
    
    int n = 0;
    cin >> n;
    
//    map<string, string> mapOfStrings;
//
//    for (long i = 0; i < n; i++) {
//
//        string str;
//        string lowerStr;
//        cin >> str;
//
//        for (const char& chr : str) {
//            lowerStr += tolower(chr);
//        }
//
//        mapOfStrings[lowerStr] = str;
//
//    }
//
//    printMap(mapOfStrings);
    
    vector<string> vectorOfStrings(n);
    
    for (auto& str : vectorOfStrings) {
        cin >> str;
    }
    
    sort(begin(vectorOfStrings), end(vectorOfStrings), [](const string& s1, const string& s2) {
        return lexicographical_compare(begin(s1),
                                       end(s1),
                                       begin(s2),
                                       end(s2),
                                       [](char ch1, char ch2) {
            return tolower(ch1) < tolower(ch2);
        });
    });
    
    printVector(vectorOfStrings);
    
    return 0;
}

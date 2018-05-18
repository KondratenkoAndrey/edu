//
//  main.cpp
//  set
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <set>
#include <vector>

using namespace std;

void printSet(const set<string>& s) {
    cout << "Size: " << s.size() << endl;
    for (auto x : s) {
        cout << x << endl;
    }
}

int main(int argc, const char * argv[]) {

    set<string> famousPerson;
    famousPerson.insert("Stroustrup");
    famousPerson.insert("Ritchie");
    famousPerson.insert("Stroustrup");
    // множество set хранит только уникальные значения
    famousPerson.insert("Anton");
//    printSet(famousPerson);
    famousPerson.erase("Anton");
//    printSet(famousPerson);
    
    set<string> monthNames = {"January", "February", "March", "March"};
    set<string> otherMonthNames = {"March","January", "February"};
    
    cout << (monthNames == otherMonthNames) << endl;
    
    cout << monthNames.count("January") << endl;
    
    vector<string> v = {"a", "b", "a"};
    set<string> s(begin(v), end(v));
    printSet(s);
    
    return 0;
}

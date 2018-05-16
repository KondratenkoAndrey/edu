//
//  main.cpp
//  dictionary
//
//  Created by Андрей Кондратенко on 16.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>

using namespace std;

void printMap(const map<int, string>& m) {
    cout << "Size of map: " << m.size() << endl;
    for (auto item : m) {
        cout << item.first << " " << item.second << endl;
    }
}

map<string, int> buildRevercedMap(const map<int, string>& m) {
    map<string, int> result;
    for (auto item : m) {
        result[item.second] = item.first;
    }
    return result;
}

void printRevercedMap(const map<string, int>& m) {
    cout << "Size of map: " << m.size() << endl;
    for (auto item : m) {
        cout << item.first << " " << item.second << endl;
    }
}

int main(int argc, const char * argv[]) {

    map<int, string> events;
    events[1950] = "Bjarne Stroustrup's birth";
    events[1941] = "Dennis Ritchie's birth";
    events[1970] = "UNIX epoch start"; //    словарь отсортирован по ключам

    printMap(events);
    
    cout << endl;
    cout << events[1950] << endl << endl;

    events.erase(1970);

    printMap(events);
    cout << endl;
    
    map<string, int> eventForYear = buildRevercedMap(events);
    printRevercedMap(eventForYear);
    
    cout << endl;
    cout << eventForYear["Bjarne Stroustrup's birth"] << endl;
    
    
    return 0;
}

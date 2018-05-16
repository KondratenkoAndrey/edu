//
//  main.cpp
//  dictionaryPart2
//
//  Created by Андрей Кондратенко on 16.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>
#include <vector>

using namespace std;

void printMap(const map<string, int>& m) {
    for (const auto& item : m) {
        cout << item.first << " " << item.second << endl;
    }
}

int main(int argc, const char * argv[]) {

    map<string, int> m = {{"one", 1}, {"two", 2}, {"three", 3}};
    printMap(m);
    
    m.erase("three");
    cout << endl;
    printMap(m);
    
    vector<string> words = {"one", "two", "one", "one", "two", "three"};
    
    map<string, int> counters;
    for (const string& word : words) {
//        if (counters.count(word) == 0) {
//            counters[word] = 1;
//        } else {                  // избыточный код
//            ++counters[word];
//        }
        ++counters[word]; // при обращении к несуществующему ключу происходит его добавление со значением 0
    }
    cout << endl;
    printMap(counters);
    
    map<string, int> emptyMap;
    emptyMap["a"];
    cout << endl;
    printMap(emptyMap);
    
    cout << endl;
    map<char, vector<string>> groupedWords;
    for (const auto& word : words) {
        groupedWords[word[0]].push_back(word);
    }
    
    for (const auto& item : groupedWords) {
        cout << item.first << ": ";
        for (const string& s : item.second) {
            cout << s << " ";
        }
        cout << endl;
    }
    
    return 0;
}

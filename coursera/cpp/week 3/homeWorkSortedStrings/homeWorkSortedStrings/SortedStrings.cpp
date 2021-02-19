//
//  SortedStrings.cpp
//  homeWorkSortedStrings
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

//#include "SortedStrings.hpp"
#include <string>
#include <vector>

using namespace std;

class SortedStrings {
public:
    void AddString(const string& s) {
        // добавить строку s в набор
        SortedStrings.push_back(s);
        sortStrings();
    }
    vector<string> GetSortedStrings() {
        // получить набор из всех добавленных строк в отсортированном порядке
        return {SortedStrings};
    }
private:
    // приватные поля
    vector<string> SortedStrings;
    void sortStrings() {
        sort(begin(SortedStrings), end(SortedStrings));
    }
};

//
//  main.cpp
//  homeWorkSortedStrings
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>
#include "SortedStrings.cpp"

using namespace std;

void printVector(const vector<string>& vectorOfString) {
    for (const auto& str : vectorOfString) {
        cout << str << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {

    SortedStrings someSortedStrings;
    
    someSortedStrings.AddString("first");
    someSortedStrings.AddString("third");
    someSortedStrings.AddString("second");
    
    printVector(someSortedStrings.GetSortedStrings());
    
    someSortedStrings.AddString("second");
    
    printVector(someSortedStrings.GetSortedStrings());
    
    return 0;
}

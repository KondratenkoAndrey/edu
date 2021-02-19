//
//  main.cpp
//  dictionaryNewFeature
//
//  Created by Андрей Кондратенко on 16.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>

using namespace std;

int main(int argc, const char * argv[]) {

    map<string, int> m = {{"one", 1}, {"two", 2}, {"three", 3}};
    
    for (const auto& item : m) {
        cout << item.first << " " << item.second << endl;
    }
    cout << endl;
    
    // c++ 17
    for (const auto& [key, value] : m) {
        cout << key << " " << value << endl;
    }
    
    return 0;
}

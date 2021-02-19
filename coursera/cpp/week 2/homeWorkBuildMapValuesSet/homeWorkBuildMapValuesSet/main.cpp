//
//  main.cpp
//  homeWorkBuildMapValuesSet
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "function.hpp"

int main(int argc, const char * argv[]) {

    set<string> values = BuildMapValuesSet({
        {1, "odd"},
        {2, "even"},
        {3, "odd"},
        {4, "even"},
        {5, "odd"}
    });
    
    for (const string& value : values) {
        cout << value << endl;
    }
    
    return 0;
}

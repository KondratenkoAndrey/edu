//
//  functions.cpp
//  homeWorkMoveStrings
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

//#include "functions.hpp"
#include <string>
#include <vector>

using namespace std;

void MoveStrings(vector<string>& source, vector<string>& destination) {
    
    for (auto v : source) {
        destination.push_back(v);
    }
    
    source.clear();
    
    
}

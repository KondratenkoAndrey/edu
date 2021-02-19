//
//  function.cpp
//  homeWorkBuildMapValuesSet
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

//#include "function.hpp"
#include <set>
#include <map>
#include <string>


using namespace std;

set<string> BuildMapValuesSet(const map<int, string>& dict) {
    
    set<string> result;
    
    for (const auto& item : dict) {
        result.insert(item.second);
    }
    
    return result;
    
}

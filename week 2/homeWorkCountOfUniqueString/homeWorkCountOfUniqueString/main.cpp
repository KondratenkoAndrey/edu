//
//  main.cpp
//  homeWorkCountOfUniqueString
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <set>

using namespace std;

int main(int argc, const char * argv[]) {

    int n = 0;
    cin >> n;

    set<string> setOfStrings;
    
    for (int i = 0; i < n; i++) {
        string s;
        cin >> s;
        setOfStrings.insert(s);
    }
    
    cout << setOfStrings.size() << endl;
    
    return 0;
}

//
//  main.cpp
//  homeWorkSynonyms
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <set>
#include <map>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    unsigned int q = 0;
    cin >> q;
    
    map<string, set<string>> dictionary;
    
    for (int i = 0; i < q; i++) {
        
        string command;
        cin >> command;
        
        if (command == "ADD") {
            
            string word1, word2;
            cin >> word1 >> word2;
            
            dictionary[word1].insert(word2);
            dictionary[word2].insert(word1);
            
        } else if (command == "COUNT") {
            
            string word;
            cin >> word;
            
            if (dictionary[word].size() > 0) {
                cout << dictionary[word].size() << endl;
            } else {
                cout << 0 << endl;
            }
            
        } else if (command == "CHECK") {
            
            string word1, word2;
            cin >> word1 >> word2;
            
            if (dictionary[word1].count(word2) > 0) {
                cout << "YES" << endl;
            } else {
                cout << "NO" << endl;
            }
 
        }
        
    }
    
    return 0;
}

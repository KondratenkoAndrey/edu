//
//  main.cpp
//  typesInXcode
//
//  Created by Андрей Кондратенко on 07.05.2018.
//  Copyright © 2018 Андрей Кондратенко. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>
#include <map>

using namespace std;

struct Person {
    string name;
    string surname;
    int age;
};

int main(int argc, const char * argv[]) {

    map<string, int> nameToValue;
    
    nameToValue["one"] = 1;
    nameToValue["two"] = 2;
    
    cout << "two is " << nameToValue["two"] << endl;
    
    vector<Person> stuff;
    stuff.push_back({"Ivan", "Ivanov", 25});
    stuff.push_back({"Petr", "Petrov", 32});
    
    cout << stuff[0].name << endl;
    
    return 0;
}

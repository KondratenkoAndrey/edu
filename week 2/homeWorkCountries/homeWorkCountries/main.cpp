//
//  main.cpp
//  homeWorkCountries
//
//  Created by Андрей Кондратенко on 16.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    int q = 0;
    cin >> q;
    
    map<string, string> countries;
    
    for (int i = 0; i < q; i++) {
        string command = "";
        cin >> command;
        
        if (command == "CHANGE_CAPITAL") {
            string country = "";
            string new_capital = "";
            cin >> country >> new_capital;
            
            if (countries[country] == "") {
                cout << "Introduce new country " << country << " with capital " << new_capital << endl;
            } else if (countries[country] == new_capital) {
                cout << "Country " << country << " hasn't changed its capital" << endl;
            } else {
                cout << "Country " << country << " has changed its capital from " << countries[country] << " to " << new_capital << endl;
            }
            
            countries[country] = new_capital;
            
        } else if (command == "RENAME") {
            string old_country_name = "";
            string new_country_name = "";
            bool error = false;
            cin >> old_country_name >> new_country_name;
            
            if (old_country_name == new_country_name) {
                cout << "Incorrect rename, skip" << endl;
                error = true;
            } else if (countries[old_country_name] == "") {
                cout << "Incorrect rename, skip" << endl;
                countries.erase(old_country_name);
                error = true;
            } else if (countries[new_country_name] != "") {
                cout << "Incorrect rename, skip" << endl;
                error = true;
            } else if (countries[new_country_name] == "") {
                countries.erase(new_country_name);
            }
            
            if (!error) {
                countries[new_country_name] = countries[old_country_name];
                countries.erase(old_country_name);
                cout << "Country " << old_country_name << " with capital " << countries[new_country_name] << " has been renamed to " << new_country_name << endl;
            }
            
        } else if (command == "ABOUT") {
            string country = "";
            cin >> country;
            
            if (countries[country] == "") {
                cout << "Country " << country << " doesn't exist" << endl;
                countries.erase(country);
            } else {
                cout << "Country " << country << " has capital " << countries[country] << endl;
            }
            
        } else if (command == "DUMP") {
            if (countries.size() == 0) {
                cout << "There are no countries in the world" << endl;
            } else {
                for (const auto& item : countries) {
                    cout << item.first << "/" << item.second << " ";
                }
                cout << endl;
            }
        }
    }
    
    return 0;
}

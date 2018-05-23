//
//  Person.cpp
//  homeWorkNamesAndSurnames1
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

class Person {
public:
    void ChangeFirstName(int year, const string& first_name) {
        // добавить факт изменения имени на first_name в год year
        name newName;
        newName.FirstName = first_name;
        newName.LastName = "";
        newName.YearOfChangeFirstName = year;
        newName.YearOfChangeLastName = 0;
        namesHistory.push_back(newName);
    }
    void ChangeLastName(int year, const string& last_name) {
        // добавить факт изменения фамилии на last_name в год year
        name newName;
        newName.FirstName = "";
        newName.LastName = last_name;
        newName.YearOfChangeFirstName = 0;
        newName.YearOfChangeLastName = year;
        namesHistory.push_back(newName);
    }
    string GetFullName(int year) {
        // получить имя и фамилию по состоянию на конец года year

        string FirstName = "";
        string LastName = "";
        long lastChangeOfFirstName = 0;
        long lastChangeOfLastName = 0;
        
        for (long i = 0; i < namesHistory.size(); i++) {
            if (namesHistory[i].YearOfChangeFirstName <= year && namesHistory[i].FirstName != "") {
                if (lastChangeOfFirstName < namesHistory[i].YearOfChangeFirstName) {
                    lastChangeOfFirstName = namesHistory[i].YearOfChangeFirstName;
                    FirstName = namesHistory[i].FirstName;
                }
            }
            if (namesHistory[i].YearOfChangeLastName <= year && namesHistory[i].LastName != "") {
                if (lastChangeOfLastName < namesHistory[i].YearOfChangeLastName) {
                    lastChangeOfLastName = namesHistory[i].YearOfChangeLastName;
                    LastName = namesHistory[i].LastName;
                }
            }
        }
        
        if (FirstName == "" && LastName == "") {
            return "Incognito";
        } else if (FirstName == "" && LastName != "") {
            return LastName + " with unknown first name";
        } else if (FirstName != "" && LastName == "") {
            return FirstName + " with unknown last name";
        } else {
            return FirstName + " " + LastName;
        }
 
    }
private:
    // приватные поля
    struct name {
        string FirstName;
        string LastName;
        int YearOfChangeFirstName;
        int YearOfChangeLastName;
    };
    vector<name> namesHistory;
};

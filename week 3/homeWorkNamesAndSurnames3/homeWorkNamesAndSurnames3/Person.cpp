//
//  Person.cpp
//  homeWorkNamesAndSurnames3
//
//  Created by Андрей Кондратенко on 28.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>
#include <string>
#include <map>
#include <vector>

using namespace std;

class Person {
public:
    Person(const string& firsName, const string& lastName, const int& yearOfBirth) {
        ChangeFirstName(yearOfBirth, firsName);
        ChangeLastName(yearOfBirth, lastName);
    };
    
    void ChangeFirstName(int year, const string& first_name) {
        // добавить факт изменения имени на first_name в год year
        if (getLastRecordBeforYear(year, histiryOfFirstNames) != "" || histiryOfFirstNames.size() == 0) {
            histiryOfFirstNames[year] = first_name;
        }
    }
    void ChangeLastName(int year, const string& last_name) {
        // добавить факт изменения фамилии на last_name в год year
        if (getLastRecordBeforYear(year, histiryOfLastNames) != "" || histiryOfLastNames.size() == 0) {
            histiryOfLastNames[year] = last_name;
        }
    }
    string GetFullName(int year) const {
        // получить имя и фамилию по состоянию на конец года year
        string firstName = getLastRecordBeforYear(year, histiryOfFirstNames);
        string lastName = getLastRecordBeforYear(year, histiryOfLastNames);
        
        return createName(firstName, lastName);
        
    }
    string GetFullNameWithHistory(int year) const {
        // получить все имена и фамилии по состоянию на конец года year
        
        vector<string> firstNamesVector;
        vector<string> lastNamesVector;
        
        string tmpName = "";
        
        for (const auto& change : histiryOfFirstNames) {
            if (change.first <= year) {
                if (change.second != tmpName) {
                    firstNamesVector.push_back(change.second);
                    tmpName = change.second;
                }
            }
        }
        
        tmpName = "";
        
        for (const auto& change : histiryOfLastNames) {
            if (change.first <= year) {
                if (change.second != tmpName) {
                    lastNamesVector.push_back(change.second);
                    tmpName = change.second;
                }
            }
        }
        
        string firstName = "";
        string lastName = "";
        
        if (firstNamesVector.size() == 1) {
            firstName += firstNamesVector[0];
        } else if (firstNamesVector.size() > 1) {
            firstName += firstNamesVector.back();
            firstNamesVector.erase(firstNamesVector.end()-1);
            firstName += " (" + reverceJoinVector(firstNamesVector, ", ") + ")";
        }
        
        if (lastNamesVector.size() == 1) {
            lastName += lastNamesVector[0];
        } else if (lastNamesVector.size() > 1) {
            lastName += lastNamesVector.back();
            lastNamesVector.erase(lastNamesVector.end()-1);
            lastName += " (" + reverceJoinVector(lastNamesVector, ", ") + ")";
        }
        
        return createName(firstName, lastName);
        
    }
private:
    // приватные поля
    map<int, string> histiryOfFirstNames;
    map<int, string> histiryOfLastNames;
    
    string getLastRecordBeforYear (const int& year, const map<int, string>& history) const {
        string record = "";
        for (const auto& change : history) {
            if (change.first <= year) {
                record = change.second;
            }
        }
        return record;
    }
    // объединение вектора в строку через разделитель в обратном порялке
    string reverceJoinVector(const vector<string>& vector, const string& delimiter) const {
        string result = "";
        for (long i = vector.size() - 1; i >= 0; --i) {
            result += vector[i];
            if (i != 0) {
                result += delimiter;
            }
        }
        return result;
    }
    // получение последнего изменения перед запрашиваемым годом
    string createName (const string& firstName, const string& lastName) const {
        if (firstName == "" && lastName == "") {
            return "No person";
        } else if (firstName == "" && lastName != "") {
            return lastName + " with unknown first name";
        } else if (firstName != "" && lastName == "") {
            return firstName + " with unknown last name";
        } else {
            return firstName + " " + lastName;
        }
    }
    
};

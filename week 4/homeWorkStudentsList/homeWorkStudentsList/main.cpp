//
//  main.cpp
//  homeWorkStudentsList
//
//  Created by Андрей Кондратенко on 30.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct Student {
    string firstLame;
    string lastName;
    int day;
    int month;
    int year;
};

int main(int argc, const char * argv[]) {

    int n;
    cin >> n;
    
    vector<Student> studentsList(n);
    
    for (Student& student : studentsList) {
        cin >> student.firstLame >> student.lastName >> student.day >> student.month >> student.year;
    }
    
    int m;
    cin >> m;
    
    for (int i = 0; i < m; i++) {
        string command;
        cin >> command;
        int numberOfStudent;
        cin >> numberOfStudent;
        
        if (command == "name" && numberOfStudent <= n && numberOfStudent != 0) {
            cout << studentsList[numberOfStudent - 1].firstLame << " "
                << studentsList[numberOfStudent - 1].lastName
                << endl;
        } else if (command == "date" && numberOfStudent <= n && numberOfStudent != 0) {
            cout << studentsList[numberOfStudent - 1].day
                    << "." << studentsList[numberOfStudent - 1].month
                    << "." << studentsList[numberOfStudent - 1].year
                    << endl;
        } else {
            cout << "bad request" << endl;
        }
    }
    
    return 0;
}

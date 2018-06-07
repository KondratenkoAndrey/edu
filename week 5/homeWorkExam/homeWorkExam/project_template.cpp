//
//  main.cpp
//  homeWorkExam
//
//  Created by Андрей Кондратенко on 07.06.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <map>
#include <set>
#include <iomanip>
#include <sstream>

using namespace std;

class Date {
    
public:
    Date() {
        year = 0;
        month = 0;
        day = 0;
    };
    
    Date(const string& dateString) {
        int y, m, d;
        stringstream stream(dateString);
        stream >> y;
        char c;
        c = stream.peek();
        if (c != '-') {
            throw runtime_error("Wrong date format: " + dateString);
        }
        stream.ignore(1);
        stream >> m;
        c = stream.peek();
        if (c != '-') {
            throw runtime_error("Wrong date format: " + dateString);
        }
        stream.ignore(1);
        c = stream.peek();
        stream >> d;

        if (m < 1 || m > 12) {
            throw runtime_error("Month value is invalid: " + to_string(m));
        }
        if (d < 1 || d > 31) {
            throw runtime_error("Day value is invalid: " + to_string(d));
        }
        
        year = y;
        month = m;
        day = d;
    };
    
    int GetYear() const {
        return year;
    }
    int GetMonth() const {
        return  month;
    }
    int GetDay() const {
        return day;
    }
    
private:
    int year;
    int month;
    int day;
    
};

bool operator<(const Date& lhs, const Date& rhs) {
    if (lhs.GetYear() < rhs.GetYear()) {
        return true;
    } else if (lhs.GetYear() == rhs.GetYear()) {
        if (lhs.GetMonth() < rhs.GetMonth()) {
            return true;
        } else if (lhs.GetMonth() == rhs.GetMonth()) {
            if (lhs.GetDay() < rhs.GetDay()) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    } else {
        return false;
    }
}

ostream& operator<< (ostream& stream, const Date& date) {
    stream << setfill('0');
    stream << setw(4) << date.GetYear() << "-";
    stream << setw(2) << date.GetMonth() << "-";
    stream << setw(2) << date.GetDay();
    return stream;
}

class Database {
    
public:
    void AddEvent(const Date& date, const string& event) {
        db[date].insert(event);
    }
    
    bool DeleteEvent(const Date& date, const string& event);
    int  DeleteDate(const Date& date);
    set<string> Find(const Date& date) const;
    
    void Print() const {
        for (const auto& dbItem : db) {
            for (const string& event : dbItem.second) {
                cout << dbItem.first << " " << event << endl;
            }
            
        }
    }
    
private:
    map<Date, set<string>> db;
};

int main() {
    
  Database db;

  string commandLine;
  while (getline(cin, commandLine)) {
      stringstream stream(commandLine);
      string command;
      stream >> command;
      
      if (command == "Add") {
          string dateString;
          string event;
          stream >> dateString >> event;
          try {
              db.AddEvent(dateString, event);
          } catch (runtime_error& e) {
              cout << e.what() << endl;
              return 0;
          }
          
      } else if (command == "Del") {
          реализовать
      } else if (command == "Find") {
          реализовать
      } else if (command == "Print") {
          db.Print();
      } else {
          cout << "Unknown command: " << command << endl;
          return 0;
      }
      
  }

  return 0;
}

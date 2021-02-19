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

#pragma mark - Date class
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
        checkNextSymbol(stream, dateString);
        stream.ignore(1);
        stream >> m;
        checkNextSymbol(stream, dateString);
        stream.ignore(1);
        stream >> d;
        checkLastSymbol(stream, dateString);

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
    
    bool checkNextSymbol(stringstream& stream, const string& dateString) {
        char c;
        c = stream.peek();
        if (c != '-') {
            throw runtime_error("Wrong date format: " + dateString);
        }
        return true;
    };
    
    bool checkLastSymbol(stringstream& stream, const string& dateString) {
        char c;
        c = stream.peek();
        if (c != EOF) {
            throw runtime_error("Wrong date format: " + dateString);
        }
        return true;
    };
    
};

#pragma mark - overloading operators
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

#pragma mark - Database class
class Database {
    
public:
    void AddEvent(const Date& date, const string& event) {
        db[date].insert(event);
    }
    
    bool DeleteEvent(const Date& date, const string& event) {
        
        if (db[date].count(event) > 0) {
            db[date].erase(event);
            if (db[date].size() == 0) {
                db.erase(date);
            }
            return  true;
        }
        return false;
        
    }
    
    void DeleteDate(const Date& date){
        
        if(db.find(date)!=db.end()){
            cout<<"Deleted "<<db.at(date).size()<<" events"<<endl;
            db.erase(date);
        }else{
            cout<<"Deleted 0 events"<<endl;
        }
        
    }
    
    set<string> Find(const Date& date) const {
        return db.at(date);
    }
    
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

#pragma mark - main function
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
              db.AddEvent(Date(dateString), event);
          } catch (runtime_error& e) {
              cout << e.what() << endl;
              return 0;
          }
          
      } else if (command == "Del") {

          string dateString;
          stream >> dateString;
          Date dateToDelete;
          
          try {
              dateToDelete = dateString;
          } catch (runtime_error& e) {
              cout << e.what() << endl;
              return 0;
          }
          
          string eventToDelete;
          stream >> eventToDelete;
          
          if (eventToDelete != "") {
              try {
                  if (db.DeleteEvent(dateToDelete, eventToDelete)) {
                      cout << "Deleted successfully" << endl;
                  } else {
                      cout << "Event not found" << endl;
                  }
              } catch (out_of_range&) {
                  cout << "Not found date: " << dateString << endl;
                  return 0;
              }
              
          } else {
                db.DeleteDate(dateToDelete);
          }

      } else if (command == "Find") {
          
          string dateString;
          stream >> dateString;
          Date dateToFind;
          
          try {
              dateToFind = dateString;
          } catch (runtime_error& e) {
              cout << e.what() << endl;
              return 0;
          }
          
          set<string> events;
          
          try {
              events = db.Find(dateToFind);
          } catch (out_of_range&) {
          }
          
          for (const string& event : events) {
              cout << event << endl;
          }
          
      } else if (command == "Print") {
          db.Print();
      } else if (command != "") {
          cout << "Unknown command: " << command << endl;
          return 0;
      }
      
  }

  return 0;
}

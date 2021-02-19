//
//  main.cpp
//  homeWorkNamesAndSurnames3
//
//  Created by Андрей Кондратенко on 28.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "Person.cpp"

using namespace std;

int main(int argc, const char * argv[]) {

    Person person("Polina", "Sergeeva", 1960);
    
    for (int year : {1959, 1960}) {
        cout << person.GetFullNameWithHistory(year) << endl;
    }
    
    person.ChangeFirstName(1965, "Appolinaria");
    person.ChangeLastName(1967, "Ivanova");
    person.ChangeLastName(1957, "Petrova");
    
    for (int year : {1965, 1967}) {
        cout << person.GetFullNameWithHistory(year) << endl;
    }
    
    return 0;
}

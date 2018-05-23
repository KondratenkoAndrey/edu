//
//  main.cpp
//  structures
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct lecture {
    string title;
    int duration;
    string author;
};

struct lectureTitle {
    string specialization;
    string course;
    string week;
};

struct detailedLecture {
    lectureTitle title; //полем структуры может быть другая структура
    int durarion;
};

void printLecture(const lecture& lecture) {
    cout << "Title: " << lecture.title <<
            ", duration: " << lecture.duration <<
            ", author: " << lecture.author << endl;
}

void printCourse(const vector<lecture>& lectures) {
    for (const lecture& lecture : lectures) {
        printLecture(lecture);
    }
}

int main(int argc, const char * argv[]) {

    lecture lectureOne;
    lectureOne.title = "OOP";
    lectureOne.duration = 5400;
    lectureOne.author = "Anton";
    printLecture(lectureOne);
    
    lecture lectureTwo = {"OOP part 2", 7200, "Anton"};
    printLecture(lectureTwo);
    
    printLecture({"OOP part 3", 2800, "Anton"});
    
    lectureTitle title = {"C++", "white belt", "three"};
    detailedLecture detailedLectureOne = {title, 9800};
    
    detailedLecture detailedLectureTwo = {{"C++", "white belt", "three"}, 9800};
    
    cout << "Specialization of " << detailedLectureTwo.title.course << ": " << detailedLectureTwo.title.specialization << endl;
    
    
    return 0;
}

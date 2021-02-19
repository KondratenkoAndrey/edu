//
//  LectureTitle.cpp
//  homeWorkLectureTitle
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>
#include <string>

using namespace std;

struct Specialization {
    explicit Specialization(const string& newSpecialization) {
        value = newSpecialization;
    }
    Specialization();
    string value;
};
struct Course {
    explicit Course(const string& newCourse) {
        value = newCourse;
    }
    Course();
    string value;
};
struct Week {
    explicit Week(const string& newWeek) {
        value = newWeek;
    }
    Week();
    string value;
};

struct LectureTitle {
    LectureTitle(const Specialization& newSpecialization,
                 const Course& newCourse,
                 const Week& newWeak) {
        specialization = newSpecialization.value;
        course = newCourse.value;
        week = newWeak.value;
    }
    
    string specialization;
    string course;
    string week;
};

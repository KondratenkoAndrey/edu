//
//  main.cpp
//  homeWorkLectureTitle
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "LectureTitle.cpp"

using namespace std;

int main(int argc, const char * argv[]) {
    
    LectureTitle title(Specialization("C++"),
                       Course("White belt"),
                       Week("4th"));
    
    

//    LectureTitle title1("C++", "White belt", "4th");
//    LectureTitle title2(string("C++"),
//                       string("White belt"),
//                       string("4th"));
//    LectureTitle title3 = {"C++", "White belt", "4th"};
//    LectureTitle title4 = {{"C++"}, {"White belt"}, {"4th"}};
//    LectureTitle title5(Course("White belt"),
//                       Specialization("C++"),
//                       Week("4th")
//                       );
//    LectureTitle title6(Specialization("C++"),
//                       Week("4th"),
//                       Course("White belt")
//                       );
    
    return 0;
}

//
//  main.cpp
//  homeWorkReversibleString
//
//  Created by Андрей Кондратенко on 28.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "ReversibleString.cpp"

int main(int argc, const char * argv[]) {

    ReversibleString s("live");
    s.Reverse();
    cout << s.ToString() << endl;
    
    s.Reverse();
    const ReversibleString& s_ref = s;
    string tmp = s_ref.ToString();
    cout << tmp << endl;
    
    ReversibleString empty;
    cout << '"' << empty.ToString() << '"' << endl;
    
    return 0;
}

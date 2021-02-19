//
//  main.cpp
//  assignmentOperation
//
//  Created by Andrey Kondratenko on 09.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {
    
    int x = 5;
    x = 6;
    cout << x << endl;
    
    string s = "hello";
    string t = s;
    t += ", world!";
    cout << "s = " << s << endl;
    cout << "t = " << t << endl;
    
    vector<string> w = {"a", "b", "c"};
    vector<string> v;
    
    v = w;
    v[0] = "d";
    
    cout << w[0] << " " << w[1] << " " << w[2] << endl;
    cout << v[0] << " " << v[1] << " " << v[2] << endl;
    
    cout << endl << endl;
    return 0;
}

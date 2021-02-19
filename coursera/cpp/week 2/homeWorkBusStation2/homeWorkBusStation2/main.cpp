//
//  main.cpp
//  homeWorkBusStation2
//
//  Created by Андрей Кондратенко on 18.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <map>

using namespace std;

int main(int argc, const char * argv[]) {
    
    int q = 0;
    cin >> q;
    
    map<vector<string>, long> routes;
    
    for (int i = 0; i < q; i++) {
        
        int n = 0;
        cin >> n;
        
        vector<string> route;
        
        for (int j = 0; j < n; j++) {
            string s;
            cin >> s;
            route.push_back(s);
        }
        
        if (routes.count(route) > 0) {
            cout << "Already exists for " << routes[route] << endl;
        } else {
            long routeNumber = routes.size() + 1;
            routes[route] = routeNumber;
            cout << "New bus " << routeNumber << endl;
        }
 
    }
    
    return 0;
}

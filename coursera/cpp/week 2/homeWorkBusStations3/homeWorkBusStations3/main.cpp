//
//  main.cpp
//  homeWorkBusStations3
//
//  Created by Андрей Кондратенко on 20.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <set>
#include <map>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    unsigned int q = 0;
    cin >> q;
    
    map<set<string>, long> routes;
    
    for (unsigned int i = 0; i < q; i++) {
        
        unsigned int n = 0;
        cin >> n;
        
        set<string> busRoute;
        
        for (unsigned int j= 0; j < n; j++) {
            string station;
            cin >> station;
            busRoute.insert(station);
        }
        
        if (routes.count(busRoute) == 0) {
            long s = routes.size() + 1;
            routes[busRoute] = s;
            cout << "New bus " << s << endl;
        } else {
            cout << "Already exists for " << routes[busRoute] << endl;
        }
        
    }
    
    return 0;
}

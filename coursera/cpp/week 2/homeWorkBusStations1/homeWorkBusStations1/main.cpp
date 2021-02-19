//
//  main.cpp
//  homeWorkBusStations1
//
//  Created by Андрей Кондратенко on 17.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {
    
    int q = 0;
    cin >> q;
    
    map<string, vector<string>> busRoutes;
    map<long, string> busOrder;
    
    for (int i = 0; i < q; i++) {
        string command = "";
        cin >> command;
        
        if (command == "NEW_BUS") {
            
            string bus;
            int stopCount;
            vector<string> stops;
            
            cin >> bus >> stopCount;
            
            for (int j = 0; j < stopCount; j++) {
                string stop;
                cin >> stop;
                stops.push_back(stop);
            }
            
            busRoutes[bus] = stops;
            busOrder[busRoutes.size()] = bus;
            
        } else if (command == "BUSES_FOR_STOP") {
            
            string stop;
            cin >> stop;
            
            bool stopExist = false;
            
            for (const auto& bus : busOrder) {
//                if (count(busRoute.second.begin(), busRoute.second.end(), stop) != 0) {
//                    cout << busRoute.first << " ";
//                    stopExist = true;
//                }
// код работает, но coursera выдвет ошибку компилации
                for (const string& s : busRoutes[bus.second]) {
                    if (s == stop) {
                        cout << bus.second << " ";
                        stopExist = true;
                    }
                }
                
            }
            
            if (!stopExist) {
                cout << "No stop";
            }
            
            cout << endl;
            
        } else if (command == "STOPS_FOR_BUS") {
            
            string bus;
            cin >> bus;
            
            if (busRoutes.count(bus) != 0) {
                for (const auto& stop : busRoutes[bus]) {
                    cout << "Stop " << stop << ": ";
                    
                    bool stopExist = false;
                    
                    for (const auto& busRoute : busOrder) {
//                        if (count(busRoute.second.begin(), busRoute.second.end(), stop) != 0) {
//                            if (busRoute.first != bus) {
//                                cout << busRoute.first << " ";
//                                stopExist = true;
//                            }
//                        }
// код работает, но coursera выдвет ошибку компилации
                        if (busRoute.second != bus) {
                            for (const string& s :busRoutes[busRoute.second]) {
                                if (s == stop) {
                                    cout << busRoute.second << " ";
                                    stopExist = true;
                                }
                            }
                        }
                        
                    }
                    
                    if (!stopExist) {
                        cout << "no interchange";
                    }
                    
                    cout << endl;
                }
                
            } else {
                cout << "No bus";
                cout << endl;
            }
            
        } else if (command == "ALL_BUSES") {
            if (busRoutes.size() != 0) {
                for (const auto& busRoute : busRoutes) {
                    cout << "Bus " << busRoute.first << ": ";
                    for (const auto& stop : busRoute.second) {
                        cout << stop << " ";
                    }
                    cout << endl;
                }
            } else {
                cout << "No buses";
                cout << endl;
            }
        }
    }
    
    return 0;
}

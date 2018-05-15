//
//  main.cpp
//  homeWorkDoings
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 У каждого из нас есть ежемесячные дела, каждое из которых нужно выполнять в конкретный день каждого месяца: оплата счетов за электричество, абонентская плата за связь и пр. Вам нужно реализовать работу со списком таких дел, а именно, обработку следующих операций:
 ADD i s
 Добавить дело с названием s в день i.

 NEXT
 Закончить текущий месяц и начать новый. Если новый месяц имеет больше дней, чем текущий, добавленные дни изначально не будут содержать дел. Если же в новом месяце меньше дней, дела со всех удаляемых дней необходимо будет переместить на последний день нового месяца.

 Обратите внимание, что количество команд этого типа может превышать 11.

 DUMP i
 Вывести все дела в день i.
 Изначально текущим месяцем считается январь. Количества дней в месяцах соответствуют Григорианскому календарю с той лишь разницей, что в феврале всегда 28 дней.
 Указание
 Для дописывания всех элементов вектора v2 в конец вектора v1 удобно использовать метод insert:
 v1.insert(end(v1), begin(v2), end(v2));
 Формат ввода
 Сначала число операций Q, затем описания операций.
 Названия дел s уникальны и состоят только из латинских букв, цифр и символов подчёркивания. Номера дней i являются целыми числами и нумеруются от 1 до размера текущего месяца.
 Формат вывода
 Для каждой операции типа DUMP в отдельной строке выведите количество дел в соответствующий день, а затем их названия, разделяя их пробелом. Порядок вывода дел в рамках каждой операции значения не имеет.
 Пример
 Ввод

12
ADD 5 Salary
ADD 31 Walk
ADD 30 WalkPreparations
NEXT
DUMP 5
DUMP 28
NEXT
DUMP 31
DUMP 30
DUMP 28
ADD 28 Payment
DUMP 28
 Вывод

 1 Salary
 2 WalkPreparations Walk
 0
 0
 2 WalkPreparations Walk
 3 WalkPreparations Walk Payment

*/

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    const vector<int> month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    int currentMonth = 0;
    vector<vector<string>> doings(month[currentMonth]);

    int q = 0;
    cin >> q;

    for (int i = 0; i < q; i++) {

        string command = "";
        cin >> command;

        if (command == "ADD") {
            int day = 0;
            string s = "";
            cin >> day >> s;
            doings[day - 1].push_back(s);

        } else if (command == "DUMP") {
            int day = 0;
            cin >> day;
            cout << doings[day - 1].size() << " ";
            for (string& s : doings[day - 1]) {
                cout << s << " ";
            }
            cout << endl;

        } else if (command == "NEXT") {
//            int newMonth = (currentMonth < 11)?currentMonth + 1:0;
            int newMonth = (currentMonth + 1) % 12;

            if (month[newMonth] > month[currentMonth]) {
                doings.resize(month[newMonth]);
            } else {
                for (int i = month[newMonth]; i < doings.size(); i++) {
                    doings[month[newMonth] - 1].insert(end(doings[month[newMonth] - 1]),
                                                       begin(doings[i]),
                                                       end(doings[i]));
                }
            }
            doings.resize(month[newMonth]);
            currentMonth = newMonth;
        }

    }

    return 0;
}

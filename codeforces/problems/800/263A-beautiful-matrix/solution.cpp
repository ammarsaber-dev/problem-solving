// https://codeforces.com/problemset/problem/263/A

#include <cstdlib>
#include <iostream>
using namespace std;

int main() {
    int stepsNeeded = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            int n;
            cin >> n;
            if (n == 1) {
                cout << abs(i - 2) + abs(j - 2) << endl;
                return 0;
            }
        }
    }
}

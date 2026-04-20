#include <iostream>
using namespace std;

int main() {
    int x;
    cin >> x;
    int totalSteps = 0;

    int stepsTaken = x / 5;
    int leftover = x % 5;

    totalSteps += stepsTaken;
    if (leftover > 0) {
        totalSteps++;
    }

    cout << totalSteps;
    return 0;
}
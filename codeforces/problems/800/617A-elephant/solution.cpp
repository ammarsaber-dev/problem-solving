// https://codeforces.com/problemset/problem/617/A

#include <iostream>

int main() {
    int x;
    std::cin >> x;

    int totalSteps = 0;

    int stepsTaken = x / 5;
    int leftover = x % 5;

    totalSteps += stepsTaken;
    if(leftover > 0) {
        totalSteps++;
    }

    std::cout << totalSteps;

    return 0;
}

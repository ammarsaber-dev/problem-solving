// https://codeforces.com/problemset/problem/50/A

#include <cmath>
#include <iostream>
using namespace std;

int main() {
    int m, n;
    cin >> m >> n;

    int numberOfSquares = (m * n) / 2;
    cout << floor(numberOfSquares) << endl;
    return 0;
}

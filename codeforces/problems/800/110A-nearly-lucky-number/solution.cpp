#include <iostream>
using namespace std;

int main() {
    string n;
    cin >> n;

    int luckyCount = 0;
    for (char c : n) {
        if (c == '4' || c == '7') luckyCount++;
    }

    cout << ((luckyCount == 4 || luckyCount == 7) ? "YES" : "NO");
    return 0;
}
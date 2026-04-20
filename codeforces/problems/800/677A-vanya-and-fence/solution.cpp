#include <iostream>
using namespace std;

int main() {
    int n, h;
    cin >> n >> h;

    int w = 0;
    for (int i = 0; i < n; i++) {
        int p;
        cin >> p;
        w += (p > h) ? 2 : 1;
    }

    cout << w;
    return 0;
}
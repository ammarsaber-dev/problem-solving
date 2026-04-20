#include <algorithm>
#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int p = 0, max = 0;

    for (int i = 0; i < n; i++) {
        int a, b;
        cin >> a >> b;
        p = p + b - a;
        max = max(max, p);
    }

    cout << max;
    return 0;
}
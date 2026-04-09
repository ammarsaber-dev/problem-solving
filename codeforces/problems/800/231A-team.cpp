// https://codeforces.com/problemset/problem/231/A

#include <iostream>
using namespace std;

int main() {
    int result = 0;

    int n;
    cin >> n;

    for(int i = 0; i < n; i++) {
        int a, b, c;
        cin >> a >> b >> c;

        if (a + b + c >= 2) result++;
    }

    cout << result << endl;

    return 0;
}

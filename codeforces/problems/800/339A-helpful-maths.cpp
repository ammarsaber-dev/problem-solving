// https://codeforces.com/problemset/problem/339/A

#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    string input;
    cin >> input;

    string arr;

    for(char &s: input) {
        if(s != '+') {
            arr.push_back(s);
        }
    }

    sort(arr.begin(), arr.end());

    for(int i = 0; i < arr.size(); i++) {
        cout << arr[i];
        if(i + 1 != (int)arr.size()) {
            cout << '+';
        }
    }

    return 0;
}

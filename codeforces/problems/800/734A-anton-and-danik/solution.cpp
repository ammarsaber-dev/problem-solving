#include <algorithm>
#include <iostream>
using namespace std;

int main() {
    string s;
    cin >> s >> s;

    int a = count(s.begin(), s.end(), 'A');
    int d = count(s.begin(), s.end(), 'D');

    if (a > d) {
        cout << "Anton";
    } else if (a < d) {
        cout << "Danik";
    } else {
        cout << "Friendship";
    }

    return 0;
}
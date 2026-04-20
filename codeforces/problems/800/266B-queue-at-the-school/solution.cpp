#include <iostream>
#include <string>
using namespace std;

int main() {
    int n, t;
    cin >> n >> t;
    string s, c;
    cin >> s;
    for (int i = 0; i < t; i++) {
        c = s;
        for (int j = 1; j < s.length(); j++) {
            if (s[j - 1] == 'B' && s[j] == 'G') {
                c[j - 1] = 'G';
                c[j] = 'B';
            }
        }
        s = c;
    }
    cout << c;
    return 0;
}
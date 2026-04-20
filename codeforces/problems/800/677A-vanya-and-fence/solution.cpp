// https://codeforces.com/problemset/problem/677/A

#include <iostream>

int main() {
  int n, h;
  std::cin >> n >> h;

  int w = 0;
  for (int i = 0; i < n; i++) {
    int p;
    std::cin >> p;

    w += (p > h) ? 2 : 1;
  }

  std::cout << w;

  return 0;
}

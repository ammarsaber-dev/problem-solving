// https://codeforces.com/problemset/problem/116/A

#include <algorithm>
#include <iostream>

int main() {
  int n;
  std::cin >> n;

  int p = 0, max = 0;

  for (int i = 0; i < n; i++) {
    int a, b;
    std::cin >> a >> b;

    p = p + b - a;
    max = std::max(max, p);
  }

  std::cout << max;
  return 0;
}

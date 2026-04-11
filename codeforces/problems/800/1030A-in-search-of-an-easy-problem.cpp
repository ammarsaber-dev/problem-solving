// https://codeforces.com/problemset/problem/1030/A

#include <iostream>

int main() {
  int n;
  std::cin >> n;

  for (int i = 0; i < n; i++) {
    int r;
    std::cin >> r;
    if (r == 1) {
      std::cout << "HARD";
      return 0;
    }
  }

  std::cout << "EASY";
  return 0;
}

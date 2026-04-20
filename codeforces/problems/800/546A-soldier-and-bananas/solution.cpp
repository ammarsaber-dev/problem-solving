// https://codeforces.com/problemset/problem/546/A

#include <algorithm>
#include <iostream>

int main() {
    long long k, n, w;
    std::cin >> k >> n >> w;

    long long totalCost = k * (w * (w + 1) / 2);
    std::cout << std::max(0LL, totalCost - n);
    return 0;
}

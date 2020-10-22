#include <iostream>

#define MAXN 1000000

int n;
int a[MAXN];

int main() {
  // handle input
  std::cin >> n;
  for (int i = 0; i < n; i++) {
    std::cin >> a[i];
  }
  // consider contiguous subsequences, but  change the starting point whenever
  // the current sum becomes negative
  int current_sum = a[0];
  int max_sum = a[0];
  for (int i = 1; i < n; i++) {
    if (current_sum < 0) {
      current_sum = 0;
    }
    current_sum += a[i];
    if (max_sum < current_sum) {
      max_sum = current_sum;
    }
  }
  // output answer
  std::cout << max_sum << std::endl;
  return 0;
}

# handle input
n = int(input())
a = [int(s) for s in input().split()]

# consider all contiguous subsequences, use the "extension" strategy by taking
# advantage of the fact that:
#   (a[i] + ... + a[j]) + a[j + 1] = a[i] + ... + a[j] + a[j + 1]
sums = []
for i in range(n):
    current_sum = 0
    for j in range(i + 1, n + 1):
        current_sum += a[j - 1]
        sums.append(current_sum)

# output answer
print(max(sums))

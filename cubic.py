# handle input
n = int(input())
a = [int(s) for s in input().split()]

# consider all contiguous subsequences
sums = []
for i in range(n):
    for j in range(i + 1, n + 1):
        sums.append(sum(a[i:j]))

# output answer
print(max(sums))

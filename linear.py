# handle input
n = int(input())
a = [int(s) for s in input().split()]

# consider contiguous subsequences, but change the starting point whenever the
# current sum becomes negative
current_sum = a[0]
max_sum = a[0]
for i in range(1, n):
    if current_sum < 0:
        current_sum = 0
    current_sum += a[i]
    if max_sum < current_sum:
        max_sum = current_sum

# output answer
print(max_sum)

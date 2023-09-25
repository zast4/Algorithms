n = int(input())
s = input()
a = list(map(int, input().split()))

time = 0
ans = 0
index = 0

for i in range(n):
    if a[i] - time >= ans:
        ans = a[i] - time
        index = i
    time = a[i]


print(s[index])
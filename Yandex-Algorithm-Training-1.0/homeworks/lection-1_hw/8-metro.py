a = int(input())
b = int(input())
n = int(input())
m = int(input())
min1 = a * (n - 1) + n
max1 = min1 + 2 * a
min2 = b * (m - 1) + m
max2 = min2 + 2 * b

mint = max(min1, min2)
maxt = min(max1, max2)
if mint <= maxt:
    print(mint, maxt)
else:
    print(-1)
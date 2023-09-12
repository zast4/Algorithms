a = int(input())
b = int(input())
c = int(input())
maxlen = max(a, b, c)
if (a + b + c - maxlen) > maxlen and maxlen > 0:
    print("YES")
else:
    print("NO")

# 3 4 5
# YES
# 3 5 4
# YES
# 4 5 3
# YES

# 1 1 3
# NO
# 1 1 1
# YES
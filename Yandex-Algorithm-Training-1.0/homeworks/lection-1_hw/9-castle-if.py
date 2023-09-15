def sort2(first, second):
    if first < second:
        return (first, second)
    return (second, first)

a = int(input())
b = int(input())
c = int(input())
d = int(input())
e = int(input())
a, b = sort2(a, b)
b, c = sort2(b, c)
a, b = sort2(a, b)
d, e = sort2(d, e)
if a <= d and b <= e:
    print('YES')
else:
    print("NO")

# My solution
# a = int(input())
# b = int(input())
# c = int(input())
# d = int(input())
# e = int(input())
# if (max(d, e) >= max(a, b) and min(d, e) >= min(a, b)) or \
#    (max(d, e) >= max(b, c) and min(d, e) >= min(b, c)) or \
#    (max(d, e) >= max(a, c) and min(d, e) >= min(a, c)):
#     print("YES")
# else:
#     print("NO")
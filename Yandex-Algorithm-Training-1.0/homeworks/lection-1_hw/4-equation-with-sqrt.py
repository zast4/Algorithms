a = int(input())
b = int(input())
c = int(input())
x = 0
if c < 0:
    print("NO SOLUTION")
elif (a + b) == c * c and (2 * a + b) == c * c:
    print("MANY SOLUTIONS")
else:
    if a != 0 and (c ** 2 - b) / a == (c ** 2 - b) // a:
        print((c ** 2 - b) // a)
    else:
        print("NO SOLUTION")

# 1
# 9
# 3
# 0
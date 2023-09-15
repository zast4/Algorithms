a, b, c, d = list(map(int, input().split()))
m = []
n = []
m.append(max(a, d))
m.append(max(a, c))
m.append(max(b, c))
m.append(max(b, d))

n.append(b + c)
n.append(b + d)
n.append(a + d)
n.append(a + c)

min = 10000001
dlina = 0
shirina = 0
for i in range(4):
    if m[i] * n[i] < min:
        min = m[i] * n[i]
        dlina = m[i]
        shirina = n[i]
print(dlina, shirina)
# print(m)
# print(n)
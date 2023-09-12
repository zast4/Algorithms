# 3
s = input()
ans = ''
anscnt = 0
dct = {}
for now in s:
    if now not in dct:
        dct[now] = 0
    dct[now] += 1
    if dct[now] > anscnt:
        anscnt = dct[now]
        ans = now
print(ans)

# 2
# s = input()
# ans = ''
# anscnt = 0
# for now in set(s):
#     nowcnt = 0
#     for j in range(len(s)):
#         if now == s[j]:
#             nowcnt += 1
#     if nowcnt > anscnt:
#         ans = now
#         anscnt = nowcnt
# print(ans)


# 1
# s = input()
# ans = ''
# anscnt = 0
# for i in range(len(s)):
#     nowcnt = 0
#     for j in range(len(s)):
#         if s[i] == s[j]:
#             nowcnt += 1
#     if nowcnt > anscnt:
#         ans = s[i]
#         anscnt = nowcnt
# print(ans)

# 0
# print(max(map(lambda x: (s.count(x), x), s))[1])
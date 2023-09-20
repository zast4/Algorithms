def findx(seq, x):
    ans = -1
    for i in range(len(seq)):
        if seq[i] == x:
            ans = i
    return ans

print(findx([1, 2, 3, 2, 5], 2))
def findx(seq, x):
    ans = -1
    for i in range(len(seq)):
        if ans == -1 and seq[i] == x:
            ans = i
    return ans

print(findx([1, 3, 1, 1, 2], 2))
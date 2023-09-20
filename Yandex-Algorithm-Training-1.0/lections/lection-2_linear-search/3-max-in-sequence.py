def findmax(seq):
    ans = seq[0]
    for i in range(len(seq)):
        if seq[i] > ans:
            ans = seq[i]
    return ans
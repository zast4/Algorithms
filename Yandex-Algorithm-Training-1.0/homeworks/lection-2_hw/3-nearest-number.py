def nearest(n, seq):
    delta = 3001
    required = -1
    for i in range(len(seq)):
        if abs(n - seq[i]) < delta:
            delta = abs(n - seq[i])
            required = seq[i]
    return required

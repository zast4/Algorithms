def constant(seq):
    for i in range(len(seq) - 1):
        if seq[i] != seq[i + 1]:
            return False
    return True

def ascending(seq):
    for i in range(len(seq) - 1):
        if seq[i + 1] <= seq[i]:
            return False
    return True

def weaklyasc(seq):
    for i in range(len(seq) - 1):
        if seq[i + 1] < seq[i]:
            return False
    return True

def descending(seq):
    for i in range(len(seq) - 1):
        if seq[i + 1] >= seq[i]:
            return False
    return True

def weaklydesc(seq):
    for i in range(len(seq) - 1):
        if seq[i + 1] > seq[i]:
            return False
    return True

def seqtype(seq):
    if constant(seq) == True:
        print("CONSTANT")
    elif ascending(seq) == True:
        print("ASCENDING")
    elif weaklyasc(seq) == True:
        print("WEAKLY ASCENDING")
    elif descending(seq) == True:
        print("DESCENDING")
    elif weaklydesc(seq) == True:
        print("WEAKLY DESCENDING")
    else:
        print("RANDOM")

seq = []
el = int(input())
while (el != -2000000000):
    seq.append(el)
    el = int(input())
seqtype(seq)


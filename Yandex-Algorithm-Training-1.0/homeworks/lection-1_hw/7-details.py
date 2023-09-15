n, k, m = list(map(int, input().split()))

details_count = 0
while True:
    pieces = n // k
    n = n % k
    details_count += (k // m) * pieces
    details = (k // m) * pieces
    leftm = pieces * k - (details * m)
    n = n + leftm

    if n < k or m > k:
        print(details_count)
        break
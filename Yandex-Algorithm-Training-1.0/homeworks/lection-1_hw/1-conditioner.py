troom, tcond = list(map(int, input().split()))
mode = input()
if mode == "freeze":
    print(tcond) if troom > tcond else print(troom)
elif mode == "heat":
    print(tcond) if troom < tcond else print(troom)
elif mode == "fan":
    print(troom)
else:
    print(tcond)

# 10 20
# heat
# 10 20
# freeze
# 0 0
# freeze
# 10 20
# auto
# 10 20
# fan

# -1 -2
# heat
# -2 -1
# heat
# -1 -2
# freeze
# -2 -1
# freeze
k1, m, k2, p2, n2 = list(map(int, input().split()))
# k1 - номер квартиры, откуда вызвали скорую
# m - этажей в здании
# k2 - номер квартиры, в которую уже выезжала скорая
# p2 - номер подъезда, в котором уже была скорая
# n2 - этаж квартиры, в которой уже была скорая

def get_ent_floor(k, flats_on_floor, floors):
    floors_before = (k - 1) // flats_on_floor
    ent = floors_before // floors + 1
    floor = floors_before % floors + 1
    return ent, floor


def check(k1, m, k2, p2, n2, flats_on_floor):
    ent2, floor2 = get_ent_floor(k2, flats_on_floor, m)
    if ent2 == p2 and floor2 == n2:
        return get_ent_floor(k1, flats_on_floor, m)
    return -1, -1


def solution(k1, m, k2, p2, n2):
    ent = -1
    floor = -1
    goodflag = False
    for flats_on_floor in range(1, 1000000 + 1):
        nent, nfloor = check(k1, m, k2, p2, n2, flats_on_floor)
        if nent != -1:
            goodflag = True
            if ent == -1:
                ent, floor = nent, nfloor
            elif ent != nent and ent != 0:
                ent = 0
            elif floor != nfloor and floor != 0:
                floor = 0
    if goodflag:
        return ent, floor
    else:
        return -1, -1

print(*solution(k1, m, k2, p2, n2))

# def get_flats_count(floors, ent, level, k):
#     floors = floors * (ent - 1) + level
#     flats = 0
#     while flats < k:
#         flats += level
#     flats //= floors
#     return flats

# def get_ent_and_floor(k, flats_on_floor, floors):
#     floors_before = (k - 1) // flats_on_floor
#     ent = floors_before // floors + 1
#     floor = floors_before % floors + 1
#     return ent, floor

# def check_ent_floor(k1, m, k2, p2, n2, flats_on_floor):
#     ent2, floor2 = get_ent_and_floor(k2, flats_on_floor, m)
#     if ent2 == p2 and floor2 == n2:
#         return get_ent_and_floor(k1, flats_on_floor, m)
#     return -1, -1

# def solution(k1, m, k2, p2, n2):
#     ent = -1
#     floor = -1
#     flag = False
#     for flats_on_floor in range(1, maxrandval + 1)
#     nent, nfloor = check_ent_floor(k1, m, k2, p2, n2, flats_on_floor)


# print(get_ent_and_floor(k2, flats_on_floor, m)) 

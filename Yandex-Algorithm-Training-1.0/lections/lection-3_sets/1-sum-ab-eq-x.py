# Дана последовательность положительных чисел длиной N и число X
# Нужно найти два различных числа A и B из последовательности, таких что A + B = X
# или вернуть пару 0, 0, если такой пары числе нет

def twotermswithsumx(nums, x):
    prevnums = set()
    for nownum in nums:
        if x - nownum in prevnums:
            return nownum, x - nownum
        prevnums.add(nownum)
    return 0, 0

def summaryRanges(nums):
    n = len(nums)
    left = 0
    result = []
    for right in range(n):
        if right + 1 < n and nums[right] + 1 == nums[right + 1]:
            continue
        if left == right:
            result += [str(nums[left])]
        else:
            result += [str(nums[left]) + "-" + str(nums[right])]
        left = right + 1
    return result

print(summaryRanges([1, 2, 3, 4, 6, 9]))
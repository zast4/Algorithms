nums = []
for i in range(4):
    nums.append(input())
    nums[i] = nums[i].translate({ord(i): None for i in '-+()'})
    if len(nums[i]) > 10:
        nums[i] = nums[i][1:]
    if len(nums[i]) == 7:
        nums[i] = '495' + nums[i]

for i in range(1, 4):
    if nums[0] == nums[i]:
        print("YES")
    else:
        print("NO")
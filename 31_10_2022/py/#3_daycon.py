finp = open('./daycon.inp')

finp.readline()
nums = tuple(int(i) for i in finp.readline().split())
m = int(finp.readline())

max_, out = 0, []

for i in range(len(nums)-m+1):
	s = sum(nums[i:i+m])
	if s > max_:
		max_ = s
		out = nums[i:i+m]

print(*out, file=open('./daycon.out', 'w+'))
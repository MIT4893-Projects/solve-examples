max_ = 0
start, stop = [int(i) for i in open('./cdck.inp').readline().split()]
for j in range(start, stop+1):
	count = 1
	i = j
	while i != 1:
		if not i % 2:
			i //= 2
		else:
			i = 3*i + 1
		count += 1
	max_ = max(count, max_)
print(max_, file=open('./cdck.out', 'w+'))
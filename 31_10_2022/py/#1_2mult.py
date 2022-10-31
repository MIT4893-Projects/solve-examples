a, b = [[int(i) for i in string] for string in open('./2mult.inp', 'r').readline().split()]
print(sum([i*j for i in a for j in b]), file=open('./2mult.out', 'w+'))
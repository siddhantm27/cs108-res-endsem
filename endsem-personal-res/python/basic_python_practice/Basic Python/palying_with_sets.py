input = open("q2-input.txt","r")

union=set()

for line in input:
    set=line.split(",")
    set[-1]=set[-1].strip()
    for num in set:
        n=int(num)
        if n not in union:
            union.add(n)

print(len(union))
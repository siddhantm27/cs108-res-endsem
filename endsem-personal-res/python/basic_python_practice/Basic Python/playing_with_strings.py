input=open("q4-input.txt","r")

inp_string=input.readline()

line2 = input.readline()
perm=line2.split(" ")
perm[-1]=perm[-1].strip()
inp_string=inp_string.removesuffix("\n")

invalid=False
if len(inp_string)==len(perm):
    for n in perm:
        n=int(n)
        if (n<0) or (n>=len(perm)):
            invalid=True

if invalid:
    print("INVALID INPUT")
else:
    for i in range(len(perm)):
        print(inp_string[perm.index(f"{i}")],end="")

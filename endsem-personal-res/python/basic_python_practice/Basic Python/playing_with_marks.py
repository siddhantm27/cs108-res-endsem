input = open("buggy_marksheet.txt","r")
marksheet=[]
for line in input:
    data=line.split("_")
    data[-1]=data[-1].strip()
    data[-1]=data[-1].split(" ")
    data[-1][1]=int(data[-1][1])
    data[2]=int(data[2])
    marksheet.append(data)

# print(marksheet)
sorted_marksheet=sorted(marksheet, key=lambda marksheet: (marksheet[2], -marksheet[3][1]))

with open("fixed_marksheet.txt", "a") as f:
  for data in sorted_marksheet:
    f.write(f"{data[0]}_{data[1]}_{data[2]}_{data[3][0]} {data[3][1]}\n")

f.close()

def prime_series(n):
    prime_series=[]
    i=2
    while n!=0:
        prime=True
        for j in range(2,i):
            if (i%j==0):
                prime=False
                break
        if prime:
            n=n-1
            prime_series.append(i)
        i=i+1
    return prime_series

def k_series(n):
    arr = prime_series(n)
    n=len(arr)-1
    i=0
    while (i<n):
        if (arr[i+1]-arr[i]==2):
            arr.insert(i+1,arr[i+1])
            n+=1
        i+=1
    return arr
            
file=open("q1-test_input.txt")
q=int(file.readline())
max_q=0
queries=[]
for i in range(q):
    query=int(file.readline())
    queries.append(query)
    if (query>max_q):
        max_q=query

max_kseries=k_series(max_q)
for query in queries:
    print(max_kseries[query-1])

file.close()

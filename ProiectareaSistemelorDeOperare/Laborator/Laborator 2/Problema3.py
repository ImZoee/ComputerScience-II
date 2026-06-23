file = open("output.in", "r")
ln = file.readline()

with open("output.out", "w") as file:
    m=0
    for i in ln:
        m+1
        m % 3 ==0
        print(m)
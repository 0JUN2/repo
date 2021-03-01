def sum_all(start, end):
    output=0
    for i in range(start, end+1):
        output+=i
    return output

print("0 to 10:", sum_all(0,10))
print("0 to 1000", sum_all(0,1000))

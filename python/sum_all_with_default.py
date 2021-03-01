def sum_all(start=0, end=10, step=1):
    output=0

    for i in range(start, end+1, step):
        output+=i
    
    return output

print("A", sum_all(0, 100, 10))

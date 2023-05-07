
li1 = [1, 2, 3, 4]
# li2 = [2, 3, 4, 5]
li2 = [2, 3]


def add(num1, num2):
    return num1+num2


ret = map(add, li1, li2)


def add_self(num):
    return num+2


# ret = map(add_self, li1)



# print(ret)  # python2 中直接返回列表

print(list(ret))  # python3 中返回对象，需要通过list拿到具体的数据值


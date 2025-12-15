from hashlib import md5
init = 'ckczppom'

# part 1
for i in range(1000000):
    h = md5((init + str(i)).encode()).hexdigest()
    if h[:5] == '00000':
        print(i)
        break

# part 2
for i in range(1000000000):
    h = md5((init + str(i)).encode()).hexdigest()
    if h[:6] == '000000':
        print(i)
        break

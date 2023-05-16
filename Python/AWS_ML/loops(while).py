#Sample while example

i=1
while i<10 :
    print("count is "+str(i))
    i+=1

print("="*10)

#Continue to next iteration if x is 2. Finally print message once the condition is false.

x=0
while x<5 :
    x+=1
    if x==2:
        continue
    print(x)

else :
    print("x is no longer less than 5")
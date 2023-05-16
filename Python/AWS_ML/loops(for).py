#Sample for loop example

fruits =["orange", "banana", "apple", "grape", "mango"]

for fruit in fruits :
    print(fruit)

print("\n")
print("="*10)
print("\n")

#Iterating range
for x in range(1,10,2):
    print(x)
else:
    print("Task complete")

print("\n")
print("="*10)
print("\n")

#Iterating multiple files
traffic_lights=["red","yellow","green"]
action=["stop","slow down","go"]

for light in traffic_lights:
    for task in action:
        print(light+" : "+task)
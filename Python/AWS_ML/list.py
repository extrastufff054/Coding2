#A python list is similar to an array . You can create an empty list too.

my_list = []

first_list = [1,2,3,4,5]
second_list = [1,"python",3]

#Nest multiple lists
nested_list=[first_list,second_list]
print(nested_list)

#Combine multiple lists
combined_list =first_list + second_list
print(combined_list)

#You can slice a list, just like a string
combined_list[0:3]

#Append a new entry to the list
combined_list.append(600)
print(combined_list)

#Remove the last entry from the list
combined_list.pop()

#Remove a specific entry from the list
combined_list.remove(1)

#Iterate through the list
for item in combined_list:
    print(item)

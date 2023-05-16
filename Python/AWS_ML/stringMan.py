#This is how to manipulate strings in python

#Store strings in a variable
test_word="Hello world to everyone!!"

#Print the test_word value
print(test_word)

#Use the [] to access the character of the string. The first character is indicated by '0'
print(test_word[0])

#Use the len() function to find the length of the string 
print(len(test_word))

#Some example of finding in strings
print(test_word.count("l")) #Count number of times l repeats in the string

print(test_word.find("o")) #Find the letter 'o' in the string. Returns the position of first match

print(test_word.count(' '))  #Count the number of spaces in the string

print(test_word.upper()) #Change the string to uppercase

print(test_word.lower()) #Change the string to lowercase

print(test_word.replace("everyone","you")) #Replace the word every one with you

print(test_word.title())  #Change the string to title format

print(test_word.split()) #Split the string into a list of strings

print(test_word + "!!!") #Concatenate the string with another string

print(":".join(test_word)) #Add ": " between each character of the string

print("".join(reversed(test_word))) #Reverse the string
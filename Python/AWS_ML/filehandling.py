#File Handling -> The key function for working with files in Python is the open() function.
#The open() function takes two parameters; filename, and mode.

#There are four different methods (modes) for opening a file :
# "r" - Read - Default value. Opens a file for reading, error if the file does not exist
# "a" - Append - Opens a file for appending, creates the file if it does not exist
# "w" - Write - Opens a file for writing, creates the file if it does not exist
# "x" - Create - Creates the specified file, returns an error if the file exists

#In addition you can specify if the file should be handled as binary or text mode
# "t" - Text - Default value. Text mode
# "b" - Binary - Binary mode (e.g. images)

#Creating a test text file

with open("test.txt", "w") as f:    #The with open statement is used to open a file named ("test.txt", "w") in write mode ("w")
    f.write("This is a test file with text in it. This is the first line\n")
    f.write("This is the second line\n")
    f.write("This is the third line\n")

    f.write("This is a test file with text in it. This is the first line\n")
    f.write("This is the second line\n")
    f.write("This is the third line\n")


#Read File
file = open('test.txt','r')
print(file.read())
file.close()

print("\n")
print("="*10)
print("\n")

#Read first 10 character of the file
file = open('test.txt', 'r')
print(file.read(10))
file.close()

#Read line from the file

file = open('test.txt', 'r')
print(file.readline())
file.close()

#Create new file
file = open('test2.txt', 'w')
file.write("This is content in the new test2 file. ")
file.close()

#Read the content of the new file
file=open('test2.txt','r')
print(file.read())
file.close()

#Update file
file=open('test2.txt','a')
file.write("\n This is additional content in the new file. ")
file.close()

#Delete file
import os
file_names=["test.txt","test2.txt"]
for item in file_names:
    if os.path.exists(item) :
        os.remove(item)
        print(f"File {item} removed successfully!")

    else :
        print(f"{item} file dows not exist!")
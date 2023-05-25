# Taking user input in R-programming

# In R, the readline() function is used to prompt the user for input from the console. 
# It waits for the user to enter a value and returns the entered value as a character string.
# The readline() function is commonly used when you want to interactively collect input from the user during the execution of a script or program.

name <- readline(prompt = "Enter your name : ")         #prompt function is used to show a prompt message
age <- readline(prompt = "Enter you age : ")
print(paste("Hello my name is ", name, "and my age is ", age))


# paste() and paste0()
#   paste() is used to concatenate series of strings
    paste("hello ", "123", "ram", sep="_")      #sep -> adds a seperater after every string

    paste0("hello", "123", "ram")   

    ## Difference :
    #       The difference between them is that paste() provides a separator operator while paste0() does not. 
    #       paste() concatenates the input strings with a separator specified by the sep argument.
    #       On the other hand, paste0() concatenates the input strings without any separator.
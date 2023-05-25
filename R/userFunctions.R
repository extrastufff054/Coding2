# Functions in R-programming

    # In R programming, a function is a set of instructions that performs a specific task. 
    # Functions are useful for dividing a large task into smaller, more manageable parts, and can be reused multiple times with different inputs.

    #1. User-defined functions -> "function" keyword
        #General syntax :
            #fun_name <- function(arg1, arg2, arg3, ....)
            # {
            #     body
            # }
        
        new.function <- function()  #function declaration
        {
            for(i in 1:5)
            {
                print(i^2)
            }
        }
        new.function()      #Function call

    #2. Passing arguments
        new.function2<- function(x,y,z)
        {
            res <- x+y+z
            print(paste("The sum of x, y and z is :",res))
        }
        new.function2(x=2,y=3,z=4)

    #3. Overwriting default arguments
        new.function3 <- function(x=10, y=20)
        {
            res<- x*y
            print(paste("The product of x and y is : ", res))
        }
        new.function3()     # Regular function call -> returns 10*20 =200
        #OR
        new.function3(5,6)  #Overwriting argument -> returns 5*6=30
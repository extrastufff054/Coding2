#Functions in python : A function is a block of code that runs when it is called.
# You can pass data, or parameters, into the function. In python, a function is defined by def

#Defining a function
def new_funct() :
    print("A simple function")

#Calling the function
new_funct()

#Sample function with parameters
def param_funct(first_name) :
    print(f"Employee name is {first_name}")

param_funct("Harry")
param_funct("Larry")
param_funct("Shally")

#Anonymous functions (lambda) : A lambda is a small anonymous function.
#A lambda function can take any number of arguments but only one expression
#Syntax -> lambda arguments :expression

#Sample lambda example
x=lambda y: y+100
print(x(15))

print("\n")
print("="*10)
print("\n")

x=lambda a, b:a*b/100
print(f"This is the value of ab/100 : {x(2,4)}")


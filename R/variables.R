#Variables in R programming

# Rules of naming variables
    #1 Variable names in R may contain letter, name, dot, underscore
    #2 Variable name may start with letter/dot only

var_name <- 10
var.name <- 20
# _var_name <- 30  --------Illegal
# var_name@ <-40   --------Illegal
.var_name <- 50
# 5var_name <- 60   --------Illegal

#Assingment of variables

var1 <- 10      #Universally accepted (Recommended)
var2 = 20
30 -> var3

#Printing variable/statements
print(var1)
cat(var1," ",var2)            #Combines multiple value into a print output
cat(var1, " ", var2, "\n", var3)

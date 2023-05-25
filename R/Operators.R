# Operators in R-programming

# Categories of Operators :
    #1. Arithmetic Operators
    #2. Relational Operators
    #3. Logical Operators
    #4. Assignment Operators

#1. Arithmetic Operators : +(addition), -(subtraction), *(Multiplicaton), /(Division), %%(Remainder), %/%(Quotient), ^(Power) 
    a <- 7.5
    b <- 2
    print(a+b)      # Addition operation
    print(a-b)      # Subtraction operation
    print(a*b)      # Multiplication operation
    print(a/b)      # Division operation
    print(a%%b)     # Remainder / Modulo operation
    print(a%/%b)    # Quotient operation
    print(a^b)      # Power operation

    # Operations on vector (Collection of similar data-types)
    c1 <- c(8,9,7)
    c2 <- c(2,4,5)
    print(c1+c2)      # Addition operation
    print(c1-c2)      # Subtraction operation
    print(c1*c2)      # Multiplication operation
    print(c1/c2)      # Division operation
    print(c1%%c2)     # Remainder / Modulo operation
    print(c1%/%c2)    # Quotient operation
    print(c1^c2)      # Power operation

#2. Relational Operators : <(Less than), >(Greater than), ==(Equals to), <=(Less than or equals to), >=(Greater than or equals to), !=(Not equals to)
    ##Note : Output for relational operators is either true/false
    a<- 8
    b<- 9
    print(a<b)      # Less than operation
    print(a>b)      # Greater than operation
    print(a==b)     # Equals to operation
    print(a>=b)     # Greater than or equals to operation
    print(a<=b)     # Less than or equals to operation
    print(a!=b)     # Not equals to operation
    
    #Operations on vector (Collection of similar data-types)
    c1 <- c(2,3,5)
    c2 <- c(5,4,2)
    print(c1<c2)      # Less than operation
    print(c1>c2)      # Greater than operation
    print(c1==c2)     # Equals to operation
    print(c1>=c2)     # Greater than or equals to operation
    print(c1<=c2)     # Less than or equals to operation
    print(c1!=c2)     # Not equals to operation

#3. Logical Operators : &(AND), |(OR), !(NOT), &&, ||
    ## These logical operators are commonly used in conditional statements (if, else, while, etc.) 
    ## and for filtering or subsetting data based on certain conditions.
    d<- c(1,4,TRUE, 2+5i)
    e <- c(2.4, TRUE, 6+5i)
    print(d&e)  
    print(d&&e) 
    ## The & and | operators perform element-wise comparisons, 
    ## while && and || operators perform short-circuit evaluations( Short-circuit evaluation is a concept in programming where the evaluation of a logical expression stops as soon as the result can be determined without evaluating the remaining expressions. In other words, if the outcome of the expression can be determined based on the initial evaluation, the remaining expressions are not evaluated.).
    print(d|e)
    print(d||e)
    print(!d)       #NOT is an unary operator

#4. Assignment Operators : =, <-, ->, <<-, ->>
    5 -> x
    z <- 32     # Recommended (Universal default)
    #and so on..
# Vector Functions in R-programming

    #1. rep() function
        ## In R, the rep() function is used to replicate or repeat elements of a vector. 
        ## It takes one or more values as input and generates a new vector by repeating those values a specified number of times.
        ## General syntax : rep(x, times)
            rep (c(2,3,4), time=4)      #Output : 234 234 234 234
            rep (c(1,4,8), each=2)      #Output : 1 1 4 4 8 8
            rep(c(0,8), time=c(3,4))    #Output : 0 0 0 8 8 8 8
            rep(1:4, length.out=9)      #Output : 1 2 3 4 1 2 3 4 1

    #2. seq() function
        ## In R, the seq() function is used to generate sequences of numbers. It allows you to create a vector of numbers with a specified start, end, and increment.
        ## General syntax : seq(from, to, by)
            seq(from=3.5, to=1.5, by=-0.5)
            seq(from=-2.7, to=1.5, length.out=10)
            seq(from=-2.7, to=1.5, length.out=5)

    #3. any() and all() function
        ## In R, the functions any() and all() are used to evaluate logical conditions on vectors or expressions. They return a single logical value indicating whether the condition is true (TRUE) or false (FALSE).
        
        ## any() : The any() function returns TRUE if at least one element in a vector or expression evaluates to TRUE. Otherwise, it returns FALSE. 
        #          It is commonly used to check if any element in a vector meets a certain condition.
        ## all(): The all() function returns TRUE if all elements in a vector or expression evaluate to TRUE. If any element evaluates to FALSE, it returns FALSE. 
        #          It is commonly used to check if all elements in a vector meet a certain condition.

            x <- 1:10
            any(x>=5)       #Output : TRUE
            any(x>15)       #Output : FALSE

            all(x>5)        #Output : FALSE
            all(x>0)        #Output : TRUE
            
# Next and Break statements in R

    #1. A break statement is used inside a loop (repeat, for, while) to stop the iterations and flow the control outside of the loop.
    #2. A next statement is useful when we want to skip the current iteration of a loop without terminating it. 
        #On encountering next, the R parser skips further evaluation and starts next iteration of the loop.

#1. Next Statement :
    x <- 1:10   # Range of 1 to 10 is specified
    # Syntax : for(variable in vector) {}
    for(val in x)
    {
        if(val==5)
        {
            next    #Will skip the iteration when x==5
        }
        print(val)
    }

#2. Break Statement :
    a <- 1
    repeat{         #Unconditional loop (recursive)
        print("Hello world!!")
        if(a>=5)
        {
            break
        }
        a<-a+1
    }

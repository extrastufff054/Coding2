# Repeat Loop in R

# In R, the repeat loop is used when you want to create an indefinite loop that continues until a specific condition is met. 
# In R, the repeat loop is used when you want to create an indefinite loop that continues until a specific condition is met. 

## General Syntax :
    #   repeat {
    #   Code to be executed
    #   Condition to check for termination
    #   if (condition) {
    #     break
    #    }
    #  }

    y<-c("Hello", "how", "are", "you")
    x<-2
    repeat
    {
        print(y)
        x<-x+1
        if(x>=5){
            break
        }
    }


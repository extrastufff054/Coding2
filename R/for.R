# For loop in R-programming

## In R, you can use a for loop to iterate over a sequence or a collection of elements. 

## General syntax : for (variable in sequence) {  # Code to be executed in each iteration }


for( y in 1:10)
{
    print(y)
}


# paste() -> In R, the paste() function is used to concatenate (combine) strings together. 
            ##It takes one or more character vectors as arguments and joins them into a single string

        ## General Syntax : paste(..., sep = " ", collapse = NULL)

    for(y in 1:10)
    {
        print(paste("Number: ", y))
    }

# Operation on vector
    f <- c("Orange", "Apple", "Banana", "Mango")
    for(i in f)
    {
        print(f)
    }

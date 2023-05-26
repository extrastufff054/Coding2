# Arrays in R-programming
    
    ##In R, arrays are multi-dimensional data structures that can store values of the same data type.
    ## Unlike vectors, which are one-dimensional, arrays can have multiple dimensions, allowing you to organize and manipulate data in a tabular or matrix-like structure.

    ## General Syntax : array(data, dim = NULL, dimnames = NULL)    
    ## where:
        # data is the input data that will be stored in the array.
        # dim is a vector specifying the dimensions of the array. Each element of the vector represents the size of a particular dimension.
        # dimnames is an optional list providing names for the dimensions of the array.

        a <- c(1,2,3,4)
        b <- c(10, 20, 30, 40, 50, 60)
        array_name <- array(c(a, b), dim = c(3,3,2))      #dim syntax : c(size, size, no of matrices)
        print(array_name)

##------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Naming of rows and columns
    ## In R, you can name the rows and columns of a matrix or an array using the rownames() and colnames() functions, respectively. 
    ## These functions allow you to assign names to the dimensions of the data structure, making it easier to identify and access specific rows or columns.
        col_name <- c("c1", "c2", "c3" )
        row_names <- c("r1", "r2", "r3")
        mat_names <- c("mat1", "mat2", "mat3", "mat4")
        array_name <- array(c(a,b), dim=c(3,3,4), dimnames = list(row_names, col_name, mat_names))
        
        print(array_name[3,2,1])

##------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Matrix Arithmetics
        d <- c(2,3,4,5)
        e<- c(11, 12, 13, 14 ,15)
        array1 <- array(c(d, e), dim = c(3,3,2))      #dim syntax : c(size, size, no of matrices)
        print(array1)

        f <- c(2,3,4,5)
        g<- c(11, 12, 13, 14 ,15)
        array2 <- array(c(f, g), dim = c(3,3,2))      #dim syntax : c(size, size, no of matrices)
        print(array2)

        array3 <- array1 + array2
        print(array3)
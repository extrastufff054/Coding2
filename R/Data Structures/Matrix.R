# Matrices in R-programming

## In R, a matrix is a two-dimensional data structure that consists of rows and columns. 
## It is a rectangular arrangement of values, where each element has a specific row and column index.
## Matrices are useful for organizing and manipulating data that can be represented in a tabular format.

## General syntax : matrix(data, nrow, ncol, byrow = FALSE, dimnames = NULL)
#         where:
            # data is the input data that will be stored in the matrix. It can be a vector or a combination of vectors.
            # nrow is the number of rows in the matrix.
            # ncol is the number of columns in the matrix.
            # byrow is an optional argument that specifies whether the elements should be filled by rows (TRUE) or by columns (FALSE). By default, it is set to FALSE.
            # dimnames is an optional list providing names for the rows and columns of the matrix.

## Creating a Matrix
    mat <- matrix(c(2:13), nrow = 4, ncol = 3, byrow = TRUE)

## Naming the Rows and Columns
    ## In R, you can name the rows and columns of a matrix using the rownames() and colnames() functions, respectively. 
    ## These functions allow you to assign names to the dimensions of the matrix, making it easier to identify and access specific rows or columns.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    y <- matrix(c(7:18), nrow = 4, ncol = 3, byrow = FALSE)
    rownames(x) <- c("R1", "R2", "R3", "R4")
    colnames(x) <- c("C1", "C2", "C3")
    rownames(y) <- c("R1", "R2", "R3", "R4")
    colnames(y) <- c("C1", "C2", "C3")
    # OR
    z <- matrix(c(7:18), nrow = 4, ncol = 3, byrow = TRUE, dimnames = list(c("R1", "R2", "R3", "R4"), c("C1", "C2", "C3")))
    
## Accessing Elements of a Matrix
    # In R, you can access elements of a matrix using indexing, specifying the row and column indices. The indexing syntax for matrices is similar to that of arrays.
    # The syntax for accessing elements of a matrix is as follows:
        # matrix_name[row_index, column_index]
    # where:
        # matrix_name is the name of the matrix.
        # row_index is the index of the row.
        # column_index is the index of the column.  

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    x[1, 2] # Accessing the element at the first row and second column

## Accessing Multiple Elements of a Matrix
    # You can access multiple elements of a matrix using indexing, specifying the row and column indices. 
    # The indexing syntax for matrices is similar to that of arrays.
    # The syntax for accessing multiple elements of a matrix is as follows:
        # matrix_name[row_index, column_index]
    # where:
        # matrix_name is the name of the matrix.
        # row_index is the index of the row.
        # column_index is the index of the column.  

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    x[1:3, 2:3] # Accessing the elements at the first three rows and second and third columns

## Accessing a Row of a Matrix

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    x[1, ] # Accessing the first row of the matrix

## Accessing a Column of a Matrix
    
        x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
        x[, 2] # Accessing the second column of the matrix

## Adding Rows and Columns to a Matrix

    # In R, you can add rows and columns to a matrix using the rbind() and cbind() functions, respectively. 
    # These functions allow you to add rows and columns to a matrix, respectively.
    # The syntax for adding rows and columns to a matrix is as follows:
        # rbind(matrix_name, vector_name)
        # cbind(matrix_name, vector_name)
    # where:
        # matrix_name is the name of the matrix.
        # vector_name is the name of the vector.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    y <- c(17:19)
    rbind(x, y) # Adding a row to the matrix
    z <- c(20:23)
    cbind(x, z) # Adding a column to the matrix

## Removing Rows and Columns from a Matrix

    # In R, you can remove rows and columns from a matrix using the rbind() and cbind() functions, respectively. 
    # These functions allow you to remove rows and columns from a matrix, respectively.
    # The syntax for removing rows and columns from a matrix is as follows:
        # rbind(matrix_name, vector_name)
        # cbind(matrix_name, vector_name)
    # where:
        # matrix_name is the name of the matrix.
        # vector_name is the name of the vector.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    y <- c(17:19)
    rbind(x, y) # Removing a row from the matrix
    z <- c(20:23)
    cbind(x, z) # Removing a column from the matrix

## Transposing a Matrix

    # In R, you can transpose a matrix using the t() function. 
    # This function allows you to transpose a matrix, i.e., interchange the rows and columns of a matrix.
    # The syntax for transposing a matrix is as follows:
        # t(matrix_name)
    # where:
        # matrix_name is the name of the matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    t(x) # Transposing the matrix

## Converting a Matrix to a Data Frame

    # In R, you can convert a matrix to a data frame using the as.data.frame() function. 
    # This function allows you to convert a matrix to a data frame.
    # The syntax for converting a matrix to a data frame is as follows:
        # as.data.frame(matrix_name)
    # where:
        # matrix_name is the name of the matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.data.frame(x) # Converting the matrix to a data frame

## Converting a Data Frame to a Matrix

    # In R, you can convert a data frame to a matrix using the as.matrix() function. 
    # This function allows you to convert a data frame to a matrix.
    # The syntax for converting a data frame to a matrix is as follows:
        # as.matrix(data_frame_name)
    # where:
        # data_frame_name is the name of the data frame.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.data.frame(x) # Converting the matrix to a data frame

## Converting a Matrix to a Vector

    # In R, you can convert a matrix to a vector using the as.vector() function. 
    # This function allows you to convert a matrix to a vector.
    # The syntax for converting a matrix to a vector is as follows:
        # as.vector(matrix_name)
    # where:
        # matrix_name is the name of the matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.vector(x) # Converting the matrix to a vector

## Converting a Vector to a Matrix

    # In R, you can convert a vector to a matrix using the matrix() function. 
    # This function allows you to convert a vector to a matrix.
    # The syntax for converting a vector to a matrix is as follows:
        # matrix(vector_name, nrow = number_of_rows, ncol = number_of_columns, byrow = TRUE/FALSE)
    # where:
        # vector_name is the name of the vector.
        # number_of_rows is the number of rows in the matrix.
        # number_of_columns is the number of columns in the matrix.
        # byrow is a logical value that indicates whether the matrix should be filled by rows or by columns.

    x <- c(5:16)
    matrix(x, nrow = 4, ncol = 3, byrow = TRUE) # Converting the vector to a matrix

## Converting a Matrix to an Array

    # In R, you can convert a matrix to an array using the array() function. 
    # This function allows you to convert a matrix to an array.
    # The syntax for converting a matrix to an array is as follows:
        # array(matrix_name, dim = c(number_of_rows, number_of_columns, number_of_matrices))
    # where:
        # matrix_name is the name of the matrix.
        # number_of_rows is the number of rows in the matrix.
        # number_of_columns is the number of columns in the matrix.
        # number_of_matrices is the number of matrices in the array.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    array(x, dim = c(4, 3, 1)) # Converting the matrix to an array

## Converting an Array to a Matrix

    # In R, you can convert an array to a matrix using the as.matrix() function. 
    # This function allows you to convert an array to a matrix.
    # The syntax for converting an array to a matrix is as follows:
        # as.matrix(array_name)
    # where:
        # array_name is the name of the array.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    array(x, dim = c(4, 3, 1)) # Converting the matrix to an array

## Converting a Matrix to a List

    # In R, you can convert a matrix to a list using the as.list() function. 
    # This function allows you to convert a matrix to a list.
    # The syntax for converting a matrix to a list is as follows:
        # as.list(matrix_name)
    # where:
        # matrix_name is the name of the matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.list(x) # Converting the matrix to a list

## Converting a List to a Matrix

    # In R, you can convert a list to a matrix using the matrix() function. 
    # This function allows you to convert a list to a matrix.
    # The syntax for converting a list to a matrix is as follows:
        # matrix(list_name, nrow = number_of_rows, ncol = number_of_columns, byrow = TRUE/FALSE)
    # where:
        # list_name is the name of the list.
        # number_of_rows is the number of rows in the matrix.
        # number_of_columns is the number of columns in the matrix.
        # byrow is a logical value that indicates whether the matrix should be filled by rows or by columns.

    x <- list(c(5:16))
    matrix(x, nrow = 4, ncol = 3, byrow = TRUE) # Converting the list to a matrix

## Converting a Matrix to a Table

    # In R, you can convert a matrix to a table using the as.table() function. 
    # This function allows you to convert a matrix to a table.
    # The syntax for converting a matrix to a table is as follows:
        # as.table(matrix_name)
    # where:
        # matrix_name is the name of the matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.table(x) # Converting the matrix to a table

## Converting a Table to a Matrix

    # In R, you can convert a table to a matrix using the as.matrix() function. 
    # This function allows you to convert a table to a matrix.
    # The syntax for converting a table to a matrix is as follows:
        # as.matrix(table_name)
    # where:
        # table_name is the name of the table.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    as.table(x) # Converting the matrix to a table

## Updating a Matrix

    # In R, you can update a matrix using the assignment operator. 
    # This operator allows you to update a matrix.
    # The syntax for updating a matrix is as follows:
        # matrix_name[row_index, column_index] <- new_value
    # where:
        # matrix_name is the name of the matrix.
        # row_index is the index of the row you want to update.
        # column_index is the index of the column you want to update.
        # new_value is the new value you want to assign to the matrix element.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    x[1, 1] <- 100 # Updating the first element of the matrix

    #1. Update an individual element:
        # Create a matrix
            my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

        # Update an element
            my_matrix[2, 3] <- 10  # Update element in the second row and third column to 10

    #2. Update a row : 
        # Create a matrix
            my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

        # Update a row
            my_matrix[2, ] <- c(10, 11, 12)  # Update the second row with new values

    #3. Update a column : 
        # Create a matrix 
            my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

        # Update a column
            my_matrix[, 2] <- c(10, 11, 12)  # Update the second column with new values

    #4. Update multiple elements :
        # Create a matrix
            my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

        # Update multiple elements
            my_matrix[1:2, 1:2] <- c(10, 11, 12, 13)  # Update the first two rows and columns with new values

    #NOTE : Elements can be updated using relational operators too
        my_matrix[my_matrix > 5] <- 0  # Update all elements greater than 5 to 0

## Deleting a Matrix
    
        # In R, you can delete a matrix using the rm() function. 
        # This function allows you to delete a matrix.
        # The syntax for deleting a matrix is as follows:
            # rm(matrix_name)
        # where:
            # matrix_name is the name of the matrix.
    
        x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
        rm(x) # Deleting the matrix

## Matrix Arithmetics

    # In R, you can perform arithmetic operations on matrices using the arithmetic operators.
    # These operators allow you to perform arithmetic operations on matrices.
    # The syntax for performing arithmetic operations on matrices is as follows:
        # matrix_name1 + matrix_name2
        # matrix_name1 - matrix_name2
        # matrix_name1 * matrix_name2
        # matrix_name1 / matrix_name2
    # where:
        # matrix_name1 is the name of the first matrix.
        # matrix_name2 is the name of the second matrix.

    x <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    y <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
    x + y # Adding two matrices
    x - y # Subtracting two matrices
    x * y # Multiplying two matrices
    x / y # Dividing two matrices
    
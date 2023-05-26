# Data-Structures in R-programming (Vector)(Atomic Vectors)
    ## In R, there are several data structures available for organizing and storing data. 
    ## Common data structures include : Vectors, Matrices, Arrays, Lists, Data-frames, Factors

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    #1. Vectors : 
        ## In R, a vector is a one-dimensional data structure that can hold elements of the same data type, such as numbers, characters, or logical values.
        ## Vectors are the most basic and fundamental data structure in R, and they are used extensively for storing and manipulating data.
        ## Two types : Atomic and Recursive vectors.

        #How to create a vector?? 
            a <- c(3,4,5,5,2,7) #one-dimensional array
            b<-3:10 # using colon operator -> Range
            c <- seq(1, 5, by=0.5)  # Sequence function , by -> number: increment of the sequence.
            d <- seq(1,5, length.out=5)

        # Elements of vector are known as components

            #a) Atomic Vectors : Atomic vectors can hold elements of a single basic data type. 
            #                    The basic data type in R include numeric, character, logical and complex.
            #                    You can create atomic vectors using the 'c()' function, which combines individual elements into a vector.

                #Numeric vector 
                    nums <- c(1,2,3,4,5)
                #Character vector
                    chars <- c("Apple", "Google", "Microsoft")
                #Logical vector
                    logicals <- c(TRUE, FALSE, TRUE)

            #b) Recursive vectors : Recursive vectors, also known as lists, can hold elements of different data types and structures.
            #                       Each element of a list can be a vector, matrix, list, or any other R object
            #                       You can create a list using the 'list()' function.
                
                #List
                my_list <- list(1, "apple", c(2,3,4), TRUE)

## NOTE : length() is used to find the no of elements in a vector
#         Elements of vector are known as components

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Accessing elements of vector :

    # NOTE : Indexing in R-programming starts from '1' (not '0')

    #1. Accessing Single Elements: 
        ## You can access a single element of a vector by specifying its index within square brackets ([]). Indexing in R starts from 1.
            my_vector <- c(10, 20, 30, 40, 50)

        # Access the first element
            first_element <- my_vector[1]  # Output: 10

        # Access the third element
            third_element <- my_vector[3]  # Output: 30
        
        # Special case
            special_case <- my_vector[-2]   # Output : 10 30 40 50 -> Reason : If index given is negative, it will be converted to an absolute value (in this case 2) hence element at index 2 is omitted and rest of the string is printed

    #2. Accessing Multiple Elements:
        ## You can access multiple elements of a vector by specifying a vector of indices within square brackets.
            my_vector <- c(10, 20, 30, 40, 50)

        # Access the second and fourth elements
            selected_elements <- my_vector[c(2, 4)]  # Output: 20, 40

        # Accessing elements in a range
            range_elements <- my_vector[2:4]    # Output : 20 30 40

    #3. Accessing Elements using Logical Indexing:
        ## You can also use a logical vector to select elements based on a condition.
            my_vector <- c(10, 20, 30, 40, 50)

        # Access elements greater than 30
            selected_elements <- my_vector[my_vector > 30]  # Output: 40, 50

    #4. Modifying elements:
        ## You can modify specific elements of a vector by assigning new values using indexing.
        my_vector <- c(10, 20, 30, 40, 50)

        # Modify the third element
            my_vector[3] <- 35

            print(my_vector)  # Output: 10, 20, 35, 40, 50

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Operations on Vector :

    #1. Arithmetic Operations: 
        ## You can perform arithmetic operations on numeric vectors, such as addition, subtraction, multiplication, and division. 
        ## These operations are performed element-wise.
            x <- c(1, 2, 3)
            y <- c(4, 5, 6)

            # Addition
            result <- x + y  # Output: 5, 7, 9

            # Subtraction
            result <- x - y  # Output: -3, -3, -3

            # Multiplication
            result <- x * y  # Output: 4, 10, 18

            # Division
            result <- x / y  # Output: 0.25, 0.4, 0.5

    #2. Vectorized Functions : 
        ## Many functions in R are vectorized, which means they can be applied to an entire vector, element-wise.
        ## For example, the sqrt() function calculates the square root of each element in a vector.
            x <- c(4, 9, 16)

            # Square root
            result <- sqrt(x)  # Output: 2, 3, 4
    
    #3. Logical Operations:
        ## You can perform logical operations on logical vectors, such as element-wise AND('&'), OR('|'), and NOT('!')
            x <- c(TRUE, FALSE, TRUE)
            y <- c(FALSE, TRUE, FALSE)

            # Element-wise AND
            result <- x & y  # Output: FALSE, FALSE, FALSE

            # Element-wise OR
            result <- x | y  # Output: TRUE, TRUE, TRUE

            # Element-wise NOT
            result <- !x  # Output: FALSE, TRUE, FALSE

    #4. Comparison Operators:
        ## You can compare elements of vectors using comparison operators, which return logical vectors indicating the result of the comparison.
            x <- c(1, 2, 3)
            y <- c(2, 2, 4)

            # Equality
            result <- x == y  # Output: FALSE, TRUE, FALSE

            # Greater than
            result <- x > y  # Output: FALSE, FALSE, FALSE

            # Less than or equal to
            result <- x <= y  # Output: TRUE, TRUE, TRUE

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Naming of Vector -> names() function

    ## In R, you can assign names to the elements of a vector using the names() function. 
    ## Assigning names to vector elements can be helpful for identifying and referencing specific elements in the vector.
        # Create a numeric vector
        values <- c(10, 20, 30, 40, 50)

        # Assign names to vector elements
        names(values) <- c("A", "B", "C", "D", "E")

        # Access elements by name
        print(values["B"])  # Output: 20

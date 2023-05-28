# Data-Structures in R-programming (Vector)(Recursive Vectors)
    ## In R, there are several data structures available for organizing and storing data. 
    ## Common data structures include : Vectors, Matrices, Arrays, Lists, Data-frames, Factors

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    #1. Vectors : 
        ## In R, a vector is a one-dimensional data structure that can hold elements of the same data type, such as numbers, characters, or logical values.
        ## Vectors are the most basic and fundamental data structure in R, and they are used extensively for storing and manipulating data.
        ## Two types : Atomic and Recursive vectors.

        #a) Atomic Vector 
            #Numeric vector 
                    nums <- c(1,2,3,4,5)
            #Character vector
                    chars <- c("Apple", "Google", "Microsoft")
            #Logical vector
                    logicals <- c(TRUE, FALSE, TRUE)

        #b) Recursive Vector : In R, a recursive vector or a list vector is a type of vector that can hold elements of different data types and structures.
        #                      It is often referred to as a list because it is created using the list() function.
            # Create a list vector
                vec <- c(8,9,5,3,6)
                char_vec<- c("Ram","Shyam", "Mohan", "Rohan", "Sohan")
                logi_vec <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
            # Create a list
                listl1 <- list(vec, char_vec, logi_vec)     # Output : 8 9 5 3 6  | "Ram"   "Shyam" "Mohan" "Rohan" "Sohan"  | TRUE FALSE FALSE  TRUE FALSE

            # OR 
                # Create a list vector
                    list2<- list("Ram", "Shyam", c(1,2,3,4,5,6,6,7), TRUE, FALSE, TRUE)

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Naming of Lists : names () function

    ## In R, you can assign names to the elements of a list using the names() function. 
    ## Assigning names to the elements of a list can help you identify and reference specific elements more easily.
        # Create a list
            my_list <- list(a = 10, b = 20, c = 30)

        # Assign names to list elements
            names(my_list) <- c("A", "B", "C")

        # Access elements by name
            print(my_list[["B"]])  # Output: 20

        # Examples :
            list2 <- list(c("Ram", "Shyam", "Rohan", "Sohan"), c(51,52,53,54),list("B.tech", "M.tech", "B.Sc", "BS") )
            list2
            names(list2) <- c("Student_Names", "Marks", "Course")
            list2

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Accessing List

    ## In R, you can access elements of a list using indexing. Lists are accessed using double brackets [[ ]] or the $ operator followed by the name of the element.
        # Create a list
            my_list <- list(a = 10, b = 20, c = 30)

        # Access elements using double brackets [[]]
            element1 <- my_list[[1]]  # Access the first element, output: 10
            element2 <- my_list[[2]]  # Access the second element, output: 20

        # Access elements using the $ operator
            element_a <- my_list$a  # Access the element with name "a", output: 10
            element_b <- my_list$b  # Access the element with name "b", output: 20
        
        # Additional : Nested List
            ## In addition to accessing individual elements, you can also access nested elements within a list. If an element of the list is itself a list, you can use nested indexing to access elements within that sublist.
            # Create a nested list
                nested_list <- list(a = list(x = 1, y = 2), b = list(x = 3, y = 4))

            # Access nested elements
                element_x <- nested_list$a$x  # Access element "x" within sublist "a", output: 1
                element_y <- nested_list$b$y  # Access element "y" within sublist "b", output: 4

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# unlist() function :
    ## In R, the unlist() function is used to flatten a list by converting it into a vector. It takes a list as input and returns a vector containing all the elements of the list.
        # Create a list
            my_list <- list(a = 10, b = c(20, 30), c = "hello")

        # Flatten the list into a vector
            my_vector <- unlist(my_list)

            print(my_vector)

# Merging lists :
    list1 <- list(a = 10, b = c(20, 30), c = "hello")
    list2 <- list(a = 10, b = 20, c = 30)
    mergelist <- list(list1, list2)

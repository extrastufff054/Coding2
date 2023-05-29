# Factors in R-programming
    ## In R, a factor is a data type used to represent categorical or discrete variables. 
    ## Factors are useful for storing and analyzing data with distinct categories or levels.
    ## Factors have a fixed set of possible values, known as levels, which can be either unorder (nominal) or ordered(ordinal).

    # Creating a Factor -> factor () 
    # Syntax: factor(x = character(), levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
        # where :
            # x: a vector of data values.
            # levels: an optional vector of the values (as character strings) that x might have taken.
            # labels: an optional vector of labels for the levels.
            # exclude: a vector of values to be excluded when forming the levels (an alternative to levels).
            # ordered: a logical value indicating whether the levels should be regarded as ordered.
            # nmax: the maximum number of levels to be used in forming a factor.

    # Example 1: Creating a Factor
    dir <- c("East", "West", "North", "East", "West", "North", "East", "West", "North")
    is.factor(dir)
    dir_factor <- factor(dir)
    factor(dir, levels = c("East", "West", "North", "South"))
    factor(dir, levels = c("East", "West", "North", "South"), labels = c("E", "W", "N", "S"))
    factor(dir, levels = c("East", "West", "North", "South"), labels = c("E", "W", "N"), exclude = c("South"))    

    # Example 2: Creating a Factor
    dir <- c("East", "West", "North", "East", "West", "North", "East", "West", "North")
    dir_factor <- factor(dir)
    dir_factor
    levels(dir_factor)
    nlevels(dir_factor)
    is.factor(dir_factor)
    is.ordered(dir_factor)
    table(dir_factor)
    table(dir_factor, exclude = c("North")) 

    #2. Generalized labels -> gl()
        ## In R, the 'gl()' function is used to generate factors that define experimental groups or levels.
        ## The name "gl" stands for "generalized labels". This function is often used in the context of analysis of variance (ANOVA) or linear regression models.

        ## General syntax : gl(n, k, labels)
            # where :
                # n: the number of levels.
                # k: the number of replications.
                # labels: an optional vector of labels for the levels.

            v1 <- gl(3, 4, labels = c("T1", "T2", "T3"))
            v1      

    #3. Accessing components of factor
        ## In R, you can access the components or properties of a factor using various functions and operations.
        ## The following are some of the functions and operations that can be used to access the components of a factor.
            # 1. levels()
                ## You can retrieve the levels of a factor using the 'levels()' function. It returns a character vector containing the unique levels of the factor.
                ## Syntax: levels(x)
                    # where :
                        # x: a factor.
                # Create a factor
                    factor1 <- factor(c("A", "B", "A", "C", "B"))

                # Get the levels of the factor
                    factor_levels <- levels(factor1)
                    print(factor_levels)

            # 2. Factor values : 
                ## You can access the underlying numeric values of a factor using the 'as.integer()' function. It returns a vector of integers representing the factor levels.
                ## Syntax: as.integer(x)
                    # where :
                        # x: a factor.
                    # Convert a factor to integer
                        # Convert a factor to integer
                            factor_values <- as.integer(factor1)
                            print(factor_values)

            #3. Frequency table : 
                ## To obtain the frequency or count of each level in a factor, you can use the 'table()' function. It returns a table object with the level names and their corresponding counts.
                ## Syntax: table(x)
                    # where :
                        # x: a factor.
                    # Create a factor
                        factor1 <- factor(c("A", "B", "A", "C", "B"))

                    # Get the frequency table
                        factor_freq <- table(factor1)
                        print(factor_freq)

            #4. Subset factor :
                ## You cna subset a factor by selecting specific levels using logical indexing or comparison operators.
                # Subset a factor based on specific levels
                    subset_factor <- factor1[factor1 %in% c("A", "B")]
                    print(subset_factor)

            #5. Using '[]' brackets
                ## You can use the '[]' brackets to access the levels of a factor. It returns a vector of the levels of the factor.
                ## Syntax: x[i]
                    # where :
                        # x: a factor.
                        # i: an index vector.
                    # Create a factor
                        factor1 <- factor(c("A", "B", "A", "C", "B"))

                    # Get the levels of the factor
                        factor_levels <- factor1[]
                        print(factor_levels)

            #6. Using '[[]]' brackets
                ## You can use the '[[]]' brackets to access the levels of a factor. It returns a vector of the levels of the factor.
                ## Syntax: x[[i]]
                    # where :
                        # x: a factor.
                        # i: an index vector.
                    # Create a factor
                        factor1 <- factor(c("A", "B", "A", "C", "B"))

                    # Get the levels of the factor
                        factor_levels <- factor1[[]]
                        print(factor_levels)

    ## Modifying elements of factor
        ## In R, factors are intended to represent categorical variable with fixed levels. As such modifying individual elements of a factor is generally not recommended.
        ## Factors have predefined levels, and changing a single element may result in inconsistent level across the factor vector.

        ## However, if you still need to modify elements of a factor, you can convert the factor to a character vector, modify the elements, and then convert it back to a factor.
        ## Example 1: Modifying elements of factor
            # Create a factor
                factor1 <- factor(c("A", "B", "A", "C", "B"))

            # Convert the factor to a character vector
                factor1 <- as.character(factor1)

            # Modify the elements of the character vector
                factor1[1] <- "D"
                factor1[2] <- "E"

            # Convert the character vector back to a factor
                factor1 <- as.factor(factor1)

            # Check the modified factor
                print(factor1)

    ## Some special functions 
        #1. is.factor()
            ## The 'is.factor()' function is used to check if an object is a factor or not. It returns a logical value indicating whether the object is a factor or not.
            ## Syntax: is.factor(x)
                # where :
                    # x: an R object.
                # Create a factor
                    factor1 <- factor(c("A", "B", "A", "C", "B"))

                # Check if the object is a factor
                    is_factor <- is.factor(factor1)
                    print(is_factor)

        #2. is.ordered()
            ## The 'is.ordered()' function is used to check if an object is an ordered factor or not. It returns a logical value indicating whether the object is an ordered factor or not.
            ## Syntax: is.ordered(x)
                # where :
                    # x: an R object.
                # Create an ordered factor
                    factor1 <- factor(c("A", "B", "A", "C", "B"), ordered = TRUE)

                # Check if the object is an ordered factor
                    is_ordered <- is.ordered(factor1)
                    print(is_ordered)

        #3. nlevels()
            ## The 'nlevels()' function is used to get the number of levels of a factor. It returns an integer value indicating the number of levels of the factor.
            ## Syntax: nlevels(x)
                # where :
                    # x: a factor.
                # Create a factor
                    factor1 <- factor(c("A", "B", "A", "C", "B"))

                # Get the number of levels of the factor
                    num_levels <- nlevels(factor1)
                    print(num_levels)

        #4. as.ordered()
            ## The 'as.ordered()' function is used to convert a factor to an ordered factor. It returns an ordered factor with the same levels as the original factor.
            ## Syntax: as.ordered(x)
                # where :
                    # x: a factor.
                # Create a factor
                    factor1 <- factor(c("A", "B", "A", "C", "B"))

                # Convert the factor to an ordered factor
                    ordered_factor <- as.ordered(factor1)
                    print(ordered_factor)

        #5. as.factor()
            ## The 'as.factor()' function is used to convert an object to a factor. It returns a factor with the same levels as the original object.
            ## Syntax: as.factor(x)
                # where :
                    # x: an R object.
                # Create a vector
                    vector1 <- c("A", "B", "A", "C", "B")

                # Convert the vector to a factor
                    factor1 <- as.factor(vector1)
                    print(factor1)
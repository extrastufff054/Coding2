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
# Manipulate data in R-programming (dplyr package)

    #1. mutate() function
        ## In dplyr package, the 'mutate()' function is used to create new variables or modify existing varibale withtin a data framw.
        ## It allows you t oadd new columns based on calculation or transformations applied to existing columns.        
        ## General syntax : mutate(.data, new_variable = expression, ...)
            # where : 
                        # .data: This represents the input data frame or tibble.
                        # new_variable: This is the name of the new variable you want to create or modify in the data frame.
                        # expression: This is the expression or calculation that defines the values of the new variable.
                        # ...: Additional arguments can be included to modify or create multiple variables simultaneously.
            library(dplyr)
            test <- data.frame(Name = c("John", "Mary", "Peter", "Jane"),
                   Height = c(1.73, 1.65, 1.80, 1.55),
                   Weight = c(70, 55, 85, 45),
                   sleep_rem = c(5, 2, 3, 4), 
                   sleep_total = c(8, 7, 9, 10))
            names(test)
            test <- test %>% mutate(rem_proportion = sleep_rem / sleep_total) %>% head()
            names(test)
            ## In R, the 'names()' function is used to retrieve or set the names of objects such as vector, lists, data frames, or arrays.

            View(test)
            ## In R. the 'View()' function is used to open a spreadsheet-like data viewer that allows you to interactively explore the contents of an R object, typically a data frame. When you call 'View()' on a data frame, it open a separate window or tab where you can view and manipulate the data.
         
    #2. group_by() function
        ## The 'group_by()' function is part of the dplyr package in R and is used to group rows of a data frame based on one or more vaibles. It is typically used in conjenctionwith other dplyr functions like 'mutate()', 'summarize()', or 'filter()' to perform operations on specific groups within a data frame.
        ## General syntax : group_by(.data, grouping_vars, ...)
            library(dplyr)

        # Grouping the data frame by the 'Species' variable
            grouped_data <- group_by(iris, Species)

        # Applying the summarize() function to calculate the mean Sepal.Length and Sepal.Width for each species
            summary_data <- summarize(grouped_data, mean_length = mean(Sepal.Length), mean_width = mean(Sepal.Width))

        # Displaying the summarized data
            print(summary_data)

# Data-frame data structure in R-programming

## In R, a data frame is a two-dimensional data structure that can store data of different types (such as characters, integers, factors, and so on) in rows and columns.
## Unlike a matrix, a data frame can have different types of data in different columns.
## A data frame is a list of vectors, and it must contain the same number of rows with each vector having the same length.
## The columns of a data frame can be of different data types, but each column should contain only one type of data.
## The data frame is a very important data structure in R, and it is used to store data in a tabular format.

## General Syntax : data_frame <- data.frame(column1, column2, ..., columnN)
## where:
    # column1, column2, ..., columnN are the vectors that will be combined to form the data frame.
    # data_frame is the name of the data frame.

    # Example:
        # Create a data frame
        name <- c("John", "Smith", "Peter", "Jane")
        age <- c(25, 30, 18, 21)
        height <- c(1.75, 1.80, 1.65, 1.70)
        data_frame <- data.frame(name, age, height)
        print(data_frame)
    ## The str() function in R is used to inspect the structure of an object. It provides a concise summary of the object's internal structure, including its data type, dimensions, and the first few elements.
        str(data_frame)

## Extracting data from data-frame
    # To extract data from a data frame in R, you can use various indexing methods to access specific rows, columns, or subsets of the data frame.
    # The following are some of the indexing methods that can be used to extract data from a data frame:
        # Using the $ operator
        # Using the [ ] operator
        # Using the subset() function
        # Using the subset() function
        # Using the with() function
        # Using the attach() and detach() functions

    #1. Accessing columns by name :
        # To access a column of a data frame by name, you can use the $ operator. The $ operator is used to extract a column from a data frame by specifying the name of the column.
        # The general syntax for using the $ operator is as follows:
            # data_frame$column_name
        # where:
            # data_frame is the name of the data frame.
            # column_name is the name of the column that you want to extract.
        # Example:
            # Extract the name column from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            print(data_frame$name)
    ## NOTE : '[[' double bracket indexing can also be used.
            # Access a single column by name using double bracket indexing
                column_data <- data_frame[["column_name"]]

    #2. Accessing columns by index :
        # To access a column of a data frame by index, you can use the [ ] operator. The [ ] operator is used to extract a column from a data frame by specifying the index of the column.
        # The general syntax for using the [ ] operator is as follows:
            # data_frame[index]
        # where:
            # data_frame is the name of the data frame.
            # index is the index of the column that you want to extract.
        # Example:
            # Extract the name column from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            print(data_frame[1])

    #3. Accessing rows by index :
        # To access a row of a data frame by index, you can use the [ ] operator. The [ ] operator is used to extract a row from a data frame by specifying the index of the row.
        # The general syntax for using the [ ] operator is as follows:
            # data_frame[index, ]
        # where:
            # data_frame is the name of the data frame.
            # index is the index of the row that you want to extract.
        # Example:
            # Extract the first row from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            print(data_frame[1, ])

    #4. Accessing rows and columns by index :
        # To access a row and column of a data frame by index, you can use the [ ] operator. The [ ] operator is used to extract a row and column from a data frame by specifying the index of the row and column.
        # The general syntax for using the [ ] operator is as follows:
            # data_frame[row_index, column_index]
        # where:
            # data_frame is the name of the data frame.
            # row_index is the index of the row that you want to extract.
            # column_index is the index of the column that you want to extract.
        # Example:
            # Extract the first row and first column from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            print(data_frame[1, 1])

    #5. Accessing rows and columns by name :
        # To access a row and column of a data frame by name, you can use the [ ] operator. The [ ] operator is used to extract a row and column from a data frame by specifying the name of the row and column.
        # The general syntax for using the [ ] operator is as follows:
            # data_frame[row_name, column_name]
        # where:
            # data_frame is the name of the data frame.
            # row_name is the name of the row that you want to extract.
            # column_name is the name of the column that you want to extract.
        # Example:
            # Extract the first row and first column from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            print(data_frame[1, 1])

    #6. Subsetting based on conditions : 
        # You can extract subsets of a data frame based on certain condition using logical indexing
            
            # Subset data based on a condition
            subset_data <- data_frame[data_frame$column_name > 5, ]

            # Subset data based on multiple conditions
            subset_data <- data_frame[data_frame$column_name > 5 & data_frame$column_name < 10, ]

            # Subset data based on a condition using the subset() function
            subset_data <- subset(data_frame, column_name > 5)

            # Subset data based on multiple conditions using the subset() function
            subset_data <- subset(data_frame, column_name > 5 & column_name < 10)

## Modifying data-frame
    ## In R, you can modify a data frame by updating or adding new values to its existing columns or by creating new columns
    #1. Updating values in a data frame :
        # To update values in a data frame, you can use the $ operator to access the column and then assign new values to the column.
        # Example:
            # Update the values in the name column of the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            data_frame$name <- c("John", "Smith", "Peter", "Jane")
            print(data_frame)

    #2. Adding new columns to a data frame :
        # To add new columns to a data frame, you can use the $ operator to access the column and then assign new values to the column.
        # Example:
            # Add a new column to the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            data_frame$weight <- c(70, 80, 60, 65)
            print(data_frame)
            #OR 
            # Using cbind() function
                ## cbind():The cbind() function is used to combine objects by column. It takes multiple arguments, which can be vectors, matrices, or data frames, and returns a new object where the input objects are combined column-wise.
                name <- c("John", "Smith", "Peter", "Jane")
                age <- c(25, 30, 18, 21)
                height <- c(1.75, 1.80, 1.65, 1.70)
                data_frame <- data.frame(name, age, height)
                weight <- c(70, 80, 60, 65)
                data_frame <- cbind(data_frame, weight)
                print(data_frame)
                
    #3. Adding new rows to a data frame : 
        # To add new rows to a data frame, you can use the rbind() function. The rbind() function is used to combine objects by row. It takes multiple arguments, which can be vectors, matrices, or data frames, and returns a new object where the input objects are combined row-wise.
        # Example:
            # Add a new row to the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            new_row <- c("Mary", 20, 1.60)
            data_frame <- rbind(data_frame, new_row)
            print(data_frame)

    #4. Modify values based on conditions :
        # You can modify values in a data frame based on certain conditions using logical indexing.
        # Example:
            # Modify values in the data frame based on a condition
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            data_frame[data_frame$age > 25, "age"] <- 30
            print(data_frame)

    #6. Deleting columns from a data frame :
        # To delete columns from a data frame, you can use the $ operator to access the column and then assign NULL to the column.
        # Example:
            # Delete the age column from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            data_frame$age <- NULL
            print(data_frame)
        
    #7. Deleting rows from a data frame :
        # To delete rows from a data frame, you can use the $ operator to access the column and then assign NULL to the column.
        # Example:
            # Delete the first row from the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            data_frame <- data.frame(name, age, height)
            data_frame <- data_frame[-1, ]
            print(data_frame)
        

## Summarizing data-frame
    ## To summarize a data frame in R, you can use various functions and techniques to obtain descriptive statistics, calculate aggregates, or generate summaries of specific variables or subsets of the data.
    #1. Summarizing data frame using summary() function :
        # The summary() function is used to summarize the data frame. It returns a summary of the data frame, including the minimum, maximum, median, mean, and quartiles for each column.
        # Example:
            # Summarize the data frame using the summary() function
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(summary(data_frame))   

    #2. Summarizing data frame using describe() function :
        # The describe() function is used to summarize the data frame. It returns a summary of the data frame, including the minimum, maximum, median, mean, and quartiles for each column.
        # Example:
            # Summarize the data frame using the describe() function
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(describe(data_frame))
    
    #3. Aggregating data : 
        # Use the 'aggregate()' function to calculate aggregate statistics for specific variables or combinations of variables.
        # You can specify the aggregation function(s) to apply the grouping variable(s) to group the data.
        # Example:
            # Aggregate the data frame by age and calculate the mean height
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(aggregate(height ~ age, data_frame, mean))
            #OR
            # Aggregate the data frame by age and calculate the mean height and weight
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(aggregate(cbind(height, weight) ~ age, data_frame, mean))
            #OR
            # Aggregate the data frame by age and calculate the mean height and weight
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(aggregate(cbind(height, weight) ~ age, data_frame, mean))
            #OR
            # Aggregate the data frame by age and calculate the mean height and weight
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(aggregate(cbind(height, weight) ~ age, data_frame, mean))
            #OR
            # Aggregate the data frame
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(aggregate(data_frame, by = list(age), FUN = mean))

    #4. Cross-tabulation :
        # Use the 'table()' function to create a contingency table, which shows the frequency distribution of categorical variables or combinations of variables.
            name <- c("John", "Smith", "Peter", "Jane")
            age <- c(25, 30, 18, 21)
            height <- c(1.75, 1.80, 1.65, 1.70)
            weight <- c(70, 80, 60, 65)
            data_frame <- data.frame(name, age, height, weight)
            print(table(data_frame$age, data_frame$height))
# Data Importing in CSV Files in R-programming

    ## In R, you can import data from CSV(Comma-Seperated Values) files using various functions and operations.
    ## The following are some of the functions and operations that can be used to import data from CSV files.
        # 1. read.csv()
            ## The 'read.csv()' function is used to import data from a CSV File where the values are sperated by commas. By default, it assumes that the first row of the CSV File contains column names.
                
                #Import data from a CSV File
                data <- read.csv("data.csv")
                print(data)

        # 2. read.csv2()
            ## The 'read.csv2()' function is used to import data from a CSV File where the values are seperated by semicolons. By default, it assumes that the first row of the CSV File contains column names.
                
                #Import data from a CSV File
                data <- read.csv2("data.csv")
                print(data)

        # 3. read.delim()
            ## The 'read.delim()' function is used to import data from a CSV File where the values are seperated by tabs. By default, it assumes that the first row of the CSV File contains column names.
                
                #Import data from a CSV File
                data <- read.delim("data.csv")
                print(data)

        # 4. read.delim2()
            ## The 'read.delim2()' function is used to import data from a CSV File where the values are seperated by tabs. By default, it assumes that the first row of the CSV File contains column names.
                
                #Import data from a CSV File
                data <- read.delim2("data.csv")
                print(data)

    ## In R, the 'getwd()' and 'setwd()' functions are used to get and set the working directory, respectively. The working directory is the default directory where R looks for files and where it saves files if no explicit path is specified.

        #1. getwd() function 
            ## The 'getwd()' function returns the current working directory as a character string.
                # Get the current working directory
                current_dir <- getwd()
                print(current_dir)

        #2. setwd() function
            ## The 'setwd()' function is used to change the current working directory to a specified directory path.
                # Set the working directory
                new_dir <- "C:\ Users\ Ruchita\ OneDrive\ Documents\ Coding-\ Coding2\ R"
                setwd(new_dir)
                print(getwd())

    ## sort() function
        ## In R, the sort() function is used to sort elements in a vector or a data frame based on their values. It arranges the elements in ascending order by default.
        # Sort a numeric vector
            x <- c(5, 2, 7, 1, 9)
            sorted_x <- sort(x)
            print(sorted_x)

        # Sorting in descending order
            ## To sort elemets in descending order, you can set the 'decreasing' argument to TRUE.
            # Sort a character vector in descending order
                y <- c("banana", "apple", "orange", "grape")
                sorted_y <- sort(y, decreasing = TRUE)
                print(sorted_y)

        # Sorting a data frame
            ## You can also use the sort() function to sort rows or columns of a data frame based on a specific variable or column.
            # Create a data frame
                name <- c("John", "Smith", "Zack", "Mary")
                age <- c(25, 30, 28, 27)
                height <- c(5.6, 5.9, 5.8, 5.7)
                df <- data.frame(name, age, height)
                print(df)

    ## order() function
        ## In R, the 'order()' function is used to determine the order of the elements ina vecotr or data frame based on their values. It returns a permutation that represents the sorted order of the elements.
        
        #1. Ordering a vector :
            ## Order a numeric vector
                x <- c(5, 2, 7, 1, 9)
                order_x <- order(x)
                print(order_x)

        #2. Ordering a data frame :
            ## The order() function is often used in combination with data frames to reorder the rows based on specific variables.
            # Create a data frame
                name <- c("John", "Smith", "Zack", "Mary")
                age <- c(25, 30, 28, 27)
                height <- c(5.6, 5.9, 5.8, 5.7)
                df <- data.frame(name, age, height)
                print(df)

    ## rank() function
        ## In R, the 'rank()' funciton is used to assign ranks to the elements of a vector. It returns a vector that represents the rank of each element relative to the other elements in the vector. 

        #1. Ranking a vector : 
            ## Rank a numeric vector
                x <- c(5, 2, 7, 1, 9)
                rank_x <- rank(x)
                print(rank_x)

        #2. Handling ties : 
            ## By default, if there are ties(elements with the same value) in the vector, the 'rank()' function assigns them the average rank.
            ## You can control this behavior using the 'ties.method' parameter.
            # Rank a numeric vector
                y <- c(1,2,3,4,,5,5,6,7,8)
                ranks <- rank(y ,ties.method = "min")   # ties.method parameter is set to "min". It assigns the minimum rank to tied elements. The first occurrence of tied elements is assigned the minimum rank, and subsequent tied elements are assigned ranks equal to the minimum rank.
                print(ranks)

    ## ncol function
        ## In R, the 'ncol()' function is used to determine the number of columns in an object. It is primarily used with data frames, matrices, and other objects that have dimensions.

            #1. Data frame 
                # Create a data frame
                    df <- data.frame(A = c(1, 2, 3), B = c("apple", "banana", "orange"), C = c(TRUE, FALSE, TRUE))

                # Get the number of columns in the data frame
                    num_columns <- ncol(df)
                    print(num_columns)

            #2. Matrix 
                # Create a matrix
                    mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

                # Get the number of columns in the matrix
                    num_columns <- ncol(mat)
                    print(num_columns)

    ## nrow function
        ## In R, the 'nrow()' function is used to determine the number of rows in an object. It is commonly used with data frames, matrices, and other objects that have dimensions.

            #1. Data frames
                # Create a data frame
                    df <- data.frame(A = c(1, 2, 3), B = c("apple", "banana", "orange"), C = c(TRUE, FALSE, TRUE))

                # Get the number of rows in the data frame
                    num_rows <- nrow(df)
                    print(num_rows)

            #2. Matrix
                # Create a matrix
                    mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

                # Get the number of rows in the matrix
                    num_rows <- nrow(mat)
                    print(num_rows)

    ## read.csv() function
        ## The 'read.csv()' function in R is used to import data from a CSV file and create a data frame. Ut is a convenient way to read structured data fram a file into R for further analysis.
            
                #1. Import data from a CSV file
                    data <- read.csv("data.csv")
                    print(data)
    
                #2. Import data from a CSV file with column names
                    data <- read.csv("data.csv", header = TRUE)
                    print(data)
    
                #3. Import data from a CSV file with column names and row names
                    data <- read.csv("data.csv", header = TRUE, row.names = 1)
                    print(data) 

                #4. Read data from a CSV file without a header row
                     data <- read.csv("path/to/file.csv", header = FALSE)

    ## read.table() function
        ## The 'read.table()' function in R is used to import data from a delimited text file and create a data frame. It is more general function compared to 'read.csv()' and can handle various types of delimiters, not just commas
            
                    #1. Import data from a delimited text file
                        data <- read.table("data.txt")
                        print(data)
    
                    #2. Import data from a delimited text file with column names
                        data <- read.table("data.txt", header = TRUE)
                        print(data)
    
                    #3. Import data from a delimited text file with column names and row names
                        data <- read.table("data.txt", header = TRUE, row.names = 1)
                        print(data)
    
                    #4. Read data from a delimited text file without a header row
                        data <- read.table("data.txt", header = FALSE)

    ## readLines() function
        ## The 'readLines()' function in R is used to read lines of text from a file and store them in a character vector. It is useful for reading text files that do not have a specific structure.
            
                    #1. Read lines from a text file
                        lines <- readLines("data.txt")
                        print(lines)
    
                    #2. Read lines from a text file and store them in a character vector
                        lines <- readLines("data.txt")
                        print(lines)

    ## Some function related to Dataframes
        #1. view()
            ## The view() function opens a spreadsheet-like view of the data frame "df" in RStudio, allowing you to interactively explore and analyze the data.
            # Assuming you have a data frame called "df"
                view(df)

        #2. fix()
            ## The fix() function opens a data editor window for the data frame "df", allowing you to manually edit the data values
            # Assuming you have a data frame called "df"
                fix(df)

        #3. str()
            ## The str() function is used to display the internal structure of an R object. It is a diagnostic function and an alternative to summary().
            # Assuming you have a data frame called "df"
                str(df)

        #4. summary()
            ## The summary() function generates descriptive statistics of the data frame "df", providing information such as minimum, maximum, mean, median, quartiles, and more.
            # Assuming you have a data frame called "df"
                summary(df)

        #5. names()
            ## The names() function retrieves the column names of the data frame "df" and returns them as a character vector
            # Assuming you have a data frame called "df"
                names(df)

        #6. nrow()
            ## The nrow() function returns the number of rows in the data frame "df"
            # Assuming you have a data frame called "df"
                nrow(df)

        #7. ncol()
            ## The ncol() function returns the number of columns in the data frame "df"
            # Assuming you have a data frame called "df"
                ncol(df)

        #8. length()
            ## The length() function returns the number of elements in the data frame "df"
            # Assuming you have a data frame called "df"
                length(df)

        #9. dim()
            ## The dim() function returns the dimensions of the data frame "df" as a vector with two elements: the number of rows and the number of columns
            # Assuming you have a data frame called "df"
                dim(df)

        #10. colnames()
            ## The colnames() function retrieves the column names of the data frame "df" and returns them as a character vector
            # Assuming you have a data frame called "df"
                colnames(df)

        #11. head()
            ## The head() function returns the first 6 rows of the data frame "df"
            # Assuming you have a data frame called "df"
                head(df)

        #12. tail()
            ## The tail() function returns the last 6 rows of the data frame "df"
            # Assuming you have a data frame called "df"
                tail(df)

        #13. subset()
            ## The subset() function is used to extract rows from a data frame that meet a certain condition. It takes three arguments: the data frame, the condition, and the columns to be returned.
            # Assuming you have a data frame called "df"
                subset(df, df$column == "value", select = c(column1, column2))

    ## Manipulation functions 
        stores <- c("Walmart", "Target", "Kroger", "Costco", "Safeway", "Publix", "Meijer", "Aldi", "Whole Foods", "Trader Joe's", "H-E-B", "Hy-Vee", "Food Lion", "WinCo Foods", "Stop & Shop")
        stores <- stores[c(1:4, 15, 5:14)]  # Reorder the elements in the vector
        names(stores)

        # grep() function
            ## The grep() function is used to search for a pattern in a vector and return the indices of the elements that match the pattern.
            # Assuming you have a vector called "stores"
                #1. Search for a pattern in a vector
                    indices <- grep("Walmart", stores)
                    print(indices)

                #2. Search for a pattern in a vector and return the matching elements
                    matches <- grep("Walmart", stores, value = TRUE)
                    print(matches)

                #3. Search for a pattern in a vector and return the indices of the elements that do not match the pattern
                    indices <- grep("Walmart", stores, invert = TRUE)
                    print(indices)

                #4. Search for a pattern in a vector and return the indices of the elements that match the pattern
                    indices <- grep("Walmart", stores, ignore.case = TRUE)
                    print(indices)

                #5. Search for a pattern in a vector and return the indices of the elements that match the pattern
                    indices <- grep("Walmart", stores, fixed = TRUE)
                    print(indices)

            # '$' sign
                ## The '$' sign is used to extract a single element from a vector or data frame. It is similar to the '[' operator, but it returns a vector instead of a list.
                # Assuming you have a vector called "stores"
                    #1. Extract a single element from a vector
                        element <- stores[1]
                        print(element)

                    #2. Extract a single element from a vector
                        element <- stores[[1]]
                        print(element)

                    #3. Extract a single element from a vector
                        element <- stores$Walmart
                        print(element)

                    #4. Extract a single element from a vector
                        element <- stores[[Walmart]]
                        print(element)

                    #5. Extract a single element from a vector
                        element <- stores[Walmart]
                        print(element)

                # max() and min() functions
                    ## The max() and min() functions are used to find the maximum and minimum values in a vector.
                    # Assuming you have a vector called "stores"
                        #1. Find the maximum value in a vector
                            max_value <- max(stores)
                            print(max_value)

                        #2. Find the minimum value in a vector
                            min_value <- min(stores)
                            print(min_value) 
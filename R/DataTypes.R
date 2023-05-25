#Data Types in R-programming

# Types of DataTypes in R programming
    #1. Logical, Numeric, Integer, Complex, Character and Raw (Primary DataTypes)
    #2. Memory is assigned as per the datatype

#1. Numeric
num1 <- 10  #Default datatype is numeric
#Example of numeric-data-type = 12, 13, 14, -24, -25, 12.365, -26.312

#2. Integer
integer=36L     #'L' has to be mentioned after the initialization of the variable to specify int datatype

#3. Complex
complex = 5 + 2i

#4. Logical
logical = TRUE
logical2 = FALSE   #Only two values true/false -> 1/0

#5. Character -> Stores both strings and value type of data
character = 'a'              #single quotes ' ' -> Character, Double quotes " " -> String
#character2 = "Hello R", "FALSE", '26.7565'

#6. Raw -> Is used to hold raw bytes -> Non-useful data



## Implementation of DataTypes
    #1. Numeric and Integer
        num2 <- 20.24
        class (num2)    # The class() function in R is used to determine the class or data type of an object. It returns a character string representing the class of the object.
        typeof(num2)    #'typeof' determines the (R internal) type or storage mode of any object

        intl <- 51
        class(intl) 
        intl <- as.integer(intl)    # The as.integer() function in R is used to explicitly convert a numeric or character object into an integer object. It returns a new object with the integer class.
        class(intl)

        # OR
        int2 <- 51L 
        class(int2)

        # int3 <- 51l       ----- Illegal

    #2. Complex
        comp <- 10-2i
        class(comp)

    #3. Logical
        logi <- TRUE
        class(logi)

    #4. Character
        char <- "ashldkfjh"
        class(char)

    #5. Raw
        # Create a raw vector
        x <- as.raw(c(0x41, 0x42, 0x43, 0x44))
        print(x)
        # Output: 41 42 43 44

        # Access individual bytes in the raw vector
        byte1 <- x[1]
        print(byte1)
        # Output: 41

        # Modify individual bytes in the raw vector
        x[2] <- as.raw(0x45)
        print(x)
        # Output: 41 45 43 44

        # Convert raw vector to character string
        string <- rawToChar(x)
        print(string)
        # Output: "AECD"

        # Convert character string to raw vector
        new_x <- charToRaw(string)
        print(new_x)
        # Output: 41 45 43 44

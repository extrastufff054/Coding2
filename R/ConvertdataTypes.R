# Converting Data Types in R-programming

    #1. Convert to Numeric
         ## The as.integer() function in R is used to explicitly convert a numeric or character object into an integer object. 
         ## It returns a new object with the integer class.
        num1 <- as.numeric(26L)    
        num1
        num2 <- as.numeric(2+4i)
        num2
        num3 <- as.numeric(TRUE)
        num3
        num4 <- as.numeric("asdf;h")    #If input character contains alphabet/ special chars, etc. output -> NA
        num4
        num5 <- as.numeric("123456")    #If input character contains only numbers -> it is converted to numeric
        num5
       

    #2. Convert to Integer
        ## The as.integer() function in R is used to explicitly convert an object to the integer data type. 
        ## It returns a new object with the integer class.
        int0 <- as.integer(52.23423)
        int0
        int9<- as.integer(4+23i)
        int9
        class(int9)
        int8 <- as.integer(TRUE)
        int8
        int7 <- as.integer("123456")
        int7
        int7 <- as.integer("asdlkhf")
        int7

    #3. Convert to Complex
        ## In R, the as.complex() function is used to explicitly convert objects to the complex data type. 
        ## It creates complex numbers by specifying both real and imaginary components.
        com1 <- as.complex(644.234)
        com1
        com2 <- as.complex(45L)
        com2
        com3 <- as.complex(FALSE)
        com3
        com4 <- as.complex("123567654dsdasd")
        com4

    #4. Convert to Logical
        ## In R, the as.logical() function is used to explicitly convert objects to the logical (Boolean) data type. 
        ## It attempts to coerce the input into a logical value.
        ## The as.logical() function follows specific rules for conversion.
        ## In general, any non-zero numeric value is converted to TRUE, zero is converted to FALSE, character values "TRUE" and "FALSE" (case-insensitive) are converted accordingly,
        ## and other values are converted to NA (Not Available).
        log1 <- as.logical(15.325)
        log1
        log2 <- as.logical(0+0i)
        log2
        log3 <- as.logical ("ASdfa")
        log3

    #5. Convert to Character
        ## In R, the as.character() function is used to explicitly convert objects to character (string) data type.
        ## It converts the input object into its character representation.
        char1 <- as.character(45.666)
        char1
        char2 <- as.character(123456)
        char2
        char3 <- as.character(TRUE)
        char3
        char4 <- as.character(0+4i)
        char4
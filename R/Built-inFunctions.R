# Built-in functions in R-programming

## MATHEMATICAL FUNCTIONS :

    #1. abs(x) -> Absolute function
        ## In R, the abs() function is used to calculate the absolute value of a numeric or complex number. 
        ## The absolute value of a number represents its distance from zero on the number line, regardless of its sign. 
        ## The abs() function returns a numeric or complex value that is always non-negative.
        x <- -5
        print(abs(x))

    #2. sqrt(x) -> Square-root function
        ## In R, the sqrt() function is used to calculate the square root of a numeric value. 
        ## It returns the non-negative square root of the given number.
        ## The input value can be a single number or a vector of numbers.
        y <- 4
        print(sqrt(y))

    #3. Floor and ceiling functions -> used to round numbers
        ## The floor() function rounds a number down to the nearest integer that is less than or equal to the given value. 
        ## It essentially removes the decimal part of a number.

        ## The ceiling() function rounds a number up to the nearest integer that is greater than or equal to the given value. 
        ## It effectively "rounds up" the number.
        z <- 54.23
        print(ceiling(z))
        print(floor((z)))

    #4. Truncate function
        ## The ceiling() function rounds a number up to the nearest integer that is greater than or equal to the given value.
        ## It effectively "rounds up" the number.
        m <- c(1.3, 4.5, 23.4)
        print(trunc(m))

    #5. sine, cosine, tangent functions
        ## In R, the sin(), cos() and tan() functions are used to calculate the sine, cosine and tanget of an angle, respectively. 
        ## These functions take an angle in radians as input and return the corresponding trigonometric value.
        o<-5
        print(sin(o))
        print(cos(o))
        print(tan(o))        

    #6. Logarithmic function
        ## In R, the log() function is used to calculate the natural logarithm (base e) or other logarithms of a numeric value.
        a <- 765
        print(log(a))

    #7. Exponent function
        ## In R, the exp() function is used to calculate the exponential function, which raises the mathematical constant e (approximately 2.718282) to the power of a given numeric value.
        b <- 23
        print(exp(b))

## STRING FUNCTIONS :

    #1. Sub-string function
        ## In R, the substr() function is used to extract a substring from a character vector or string. It allows you to select a portion of a string based on its starting position and optionally specify the length of the substring.
        ## General syntax : result <- substr(string, start, stop)
        c<- "12345678"
        substr(c, 1, 6)

    #2. To-lower/upper
        ## In R, the tolower() and toupper() functions are used to convert characters in a string to lowercase and uppercase, respectively. 
        ## These functions are particularly useful when you want to standardize the case of characters in a string.
        ## General syntax : lowercase_string <- tolower(string)
        #                   uppercase_string <- toupper(string)
        d <- "Bottle is Grey"
        print(tolower(d))
        print(toupper(d))

    #3. grep() function
        ## In R, the grep() function is used to search for a pattern within a character vector or string and returns the indices or values that match the pattern.
        ##  It is commonly used for pattern matching and filtering data based on specific criteria.
        e <- c("abc", "cdefghijklm", "abcdefghijklmnopqrstuvwxyz")
        pat <- "^abc"   # Declaring pat i.e pattern variable and passing the desired pattern to be found amongst the vector string
        print(grep(pat, e))

    #4. strsplit()
        ## In R, the strsplit() function is used to split a character string into substrings based on a specified delimiter or regular expression pattern. 
        ## It returns a list of substrings resulting from the split operation.
        f <- "Hello, world!!"
        split_text <- strsplit(f, split = ",")
        print(split_text)

## STATISTICAL FUNCTIONS
    # mean, median, mode, etc. 

g <- c(10:20)
su <- sum(g)
print(su)
print(min(g))
print(max(g))

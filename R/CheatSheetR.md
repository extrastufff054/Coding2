# Cheat Sheet for R-programming

## 1. Basics :
    > Assigning values: x <- 5 or x = 5
    > Printing output: print(x) or just x
    > Basic arithmetic operations: +, -, *, /, ^ (exponentiation)
    > Data types: numeric, character, logical
    > Basic data structures: vectors, matrices, data frames, lists

``` R
## R-language
# Assigning values
x <- 5
print(x)

# Basic arithmetic operations
y <- 3 + 2
z <- x * y
print(z)
```
## 2. Data Manipulation :
``` R
# Creating vectors
my_vector <- c(1, 2, 3)
print(my_vector)

# Indexing and slicing
print(my_vector[1])
print(my_vector[2:3])

# Data frame operations
df <- read.csv("data.csv")
head(df)
summary(df)

```
    > Creating vectors: c(1, 2, 3) or vector()
    > Indexing and slicing: x[1], x[2:4]
    > Basic vector operations: length(), sum(), mean(), max(), min()
    > Data frame operations: read.csv(), head(), tail(), summary(), str()
    > Subsetting data frames: df[1, ], df[, "column_name"]

## 3. Control Structures:
``` R 
# if-else statements
x <- 5
if (x > 0) {
  print("Positive")
} else {
  print("Negative")
}

# for loop
for (i in 1:5) {
  print(i)
}

# while loop
x <- 5
while (x > 0) {
  print(x)
  x <- x - 1
}

```
    > if-else statements: if (condition) { code } else { code }
    > for loop: for (variable in sequence) { code }
    > while loop: while (condition) { code }
    > switch statement: switch(expression, case1, case2, ...)
## 4. Functions:
``` R 
# Defining functions
my_function <- function(a, b) {
  result <- a + b
  return(result)
}

# Calling functions
print(my_function(3, 4))

```
    > Defining functions: my_function <- function(arg1, arg2) { code }
    > Calling functions: my_function(arg1_value, arg2_value)
    > Returning values: return(value)
## 5. Packages and Libraries:
``` R 
# Installing and loading packages
install.packages("ggplot2")
library("ggplot2")

```
    > Installing packages: install.packages("package_name")
    > Loading packages: library("package_name")
## 6. Data Visualization:
``` R
# Base graphics
x <- c(1, 2, 3)
y <- c(4, 5, 6)
plot(x, y)
hist(x)
boxplot(y)
barplot(x)

# ggplot2 package
data <- data.frame(x = c(1, 2, 3), y = c(4, 5, 6))
ggplot(data, aes(x, y)) + geom_point()

```
    > Base graphics: plot(), hist(), boxplot(), barplot()
    > ggplot2 package: ggplot(), geom_point(), geom_line(), geom_bar()
## 7. Statistical Analysis:
``` R
# Descriptive statistics
x <- c(1, 2, 3, 4, 5)
print(mean(x))
print(sd(x))

# Hypothesis testing
x <- c(1, 2, 3)
y <- c(4, 5, 6)
t.test(x, y)

```
    > Descriptive statistics: mean(), median(), sd(), var()
    > Hypothesis testing: t.test(), wilcox.test(), chisq.test()
    > Linear regression: lm(), summary()
## 8. File I/O:
``` R
# Reading data from CSV
data <- read.csv("data.csv")
head(data)

# Writing data to CSV
write.csv(data, "output.csv")

```
    > Reading data from CSV: read.csv("file.csv")
    > Writing data to CSV: write.csv(data, "file.csv")
## 9. Additional Resources:
    > R Documentation: https://www.rdocumentation.org/

    > RStudio Cheat Sheets: https://www.rstudio.com/resources/cheatsheets/
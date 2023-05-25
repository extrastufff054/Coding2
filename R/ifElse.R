# if-else statements in R-programming

x <- 25L
if(is.integer(x))
{
    print("x is an integer number\n")
}else {                                 #else is to be defined just after the end of scope of if
   print("x is not an integer number")
}

##-------------------------------------------------------------------------------------------------------------
y <- c("Hardwork", "is", "the","key", "of", "success")
if("key" %in% y)   #searching any value out of the string/vector
{   
    print("Exists in the vector")
}else {
   print("Key does not exist in the scope")
}

if("Ram" %in% y)
{
    print("Exists")
}else {
   print("Does not exist")
}
# ---------------------------------------------------------------------------------------------------------
marks<-75
if(marks>75)
{
    print("First class")
}else if (marks<=75 && marks>50) {
   print("second class")
}else {
   print("Fail")
}


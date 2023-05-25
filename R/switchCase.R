# Switch case in R-programming

##Syntax : switch(expression, case1, case2, ...)

    #1. Based on index value
        x <- switch(2, "ram", "shyam", "mohan", "sumit")
        print(x)            
        #Output : shyam -> since index/key == 2 and the value at index 2 is "shyam"

##-------------------------------------------------------------------------------------------------------

    #2. Based on matching value
        y<-"6"
        x<-switch (y, "4"="ram","5 "="shyam","6"= "mohan","7"= "sumit")
        print(x)
        #output : Value of index and y is compared. If index==y, value at index is stored in x and hence printed

    #3. 
import numpy as np

a=np.arange(15).reshape(3,5)    #Create array with range 0-14 in 3 by 5 dimension
b=np.zeros((3,5))               #Create array with zeroes
c=np.ones((2,3,4), dtype=np.int16) #Create array with ones and defining data types
d=np.ones((3,5))

np.add(a,b) #Addition

np.subtract(a,b) #Subtraction

np.divide(a,d) #Division

np.multiply(a,d) #Multiplication

np.array_equal(a,b) #Comparison - arraywisea
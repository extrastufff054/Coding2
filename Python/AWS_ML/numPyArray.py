''' Numpy is the fundamental package for scientific computing with Python
Among other things, it contains:
1. A powerful N-dimensional array object
2. Sophisticated (broadcasting) functions
3. Tools for integrating C/C++ and Fortran code
4. Useful linear algebra, Fourier transform, and random number capabilities
5. Besides its obvious scientific uses, Numpy can also be used as an efficient multi-dimensional container of generic data'''


'''Inspecting your array'''

import numpy as np 

# Create array
a = np.arange(15).reshape(3, 5) # Create array with range 0-14 in 3 by 5 dimension
b = np.zeros((3,5)) # Create array with zeroes
c = np.ones( (2,3,4), dtype=np.int16 ) # Createarray with ones and defining data types
d = np.ones((3,5))

a.shape # Array dimension

len(b)# Length of array

c.ndim # Number of array dimensions

a.size # Number of array elements

b.dtype # Data type of array elements

c.dtype.name # Name of data type

c.astype(float) # Convert an array type to a different type

''' Numpy is the fundamental package for scientific computing with Python
Among other things, it contains:
1. A powerful N-dimensional array object
2. Sophisticated (broadcasting) functions
3. Tools for integrating C/C++ and Fortran code
4. Useful linear algebra, Fourier transform, and random number capabilities
5. Besides its obvious scientific uses, Numpy can also be used as an efficient multi-dimensional container of generic data'''


'''Inspecting your array'''

import numpy as np 

a=np.arange (15).reshape(3,5)
b=np.zeros((3,5))
c=np.ones((2,3,4), dtype=np.int16)
d=np.ones((3,5))

a.shape
len(b)
c.ndim
a.size
b.dtype
c.dtype.name
c.astype(float)

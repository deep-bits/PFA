# -*- coding: utf-8 -*-
"""
Created on Thu Sep 29 14:31:45 2022

@author: Deepak
"""

# Exception handling in Python

import numpy as np
import warnings
warnings.filterwarnings("error")

list1 = [10,20,30,40]
list2 = [2,4,15,0]

try:
    print(np.divide(list1,list2))
except RuntimeWarning:
    print("There were warnings")
except:
    print("Some error is there in the code")
else:
    print("Code executed successfully without error")
finally:
    print("This was a demonstration of exception handling in Python")
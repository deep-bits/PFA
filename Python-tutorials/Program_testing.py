# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 14:05:46 2022

"""

def isPrime(x):
    if x <= 2:
        return False
    for i in range(2, x):
        if x%i == 0:
            return False
        return True
    
print(isPrime(11))
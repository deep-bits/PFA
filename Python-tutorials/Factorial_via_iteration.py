# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 13:19:36 2022

@author: Deepak
"""

def factI(n):
    result = 1
    while n > 1:
        result = result * n
        n -= 1
    return result

factI(4)
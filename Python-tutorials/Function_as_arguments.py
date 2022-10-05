# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 13:50:22 2022

@author: Deepak
"""
num1 = (1, 2, 3, 4)
result = map(lambda x, y: x**y, num1, num1)
print(list(result))
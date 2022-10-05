# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 13:19:44 2022

@author: Deepak
"""

def factR(n):
    if n == 1:
        return n
    else:
        return n*factR(n - 1)

factR(4)
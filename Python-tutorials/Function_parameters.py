# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 12:31:10 2022

@author: Deepak
"""

x = 4
for i in range(0, x):
    print(i)
    x = 2
    
for i in "Pythons":
    print(i)
    
def maxVal(x, y):
    if x > y:
        return x
    else:
        return y

maxVal(2,4)
    
def printName(firstName, lastName, reverse):
    if reverse:
        print(lastName + ', ' + firstName)
    else:
        print(firstName, lastName)
        
printName('Olga', reverse = False, lastName = 'Jerova')
        


# -*- coding: utf-8 -*-
"""
Created on Tue Oct  4 13:28:26 2022

@author: Deepak
"""

nameHandle = open('Text-files.txt', 'a')
for i in range(5):
    nameHandle.write(str(i) + '\n')
nameHandle.close()

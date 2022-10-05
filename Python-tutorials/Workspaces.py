# -*- coding: utf-8 -*-
"""
Created on Thu Sep 29 14:31:45 2022

@author: Deepak
"""
# Save the python workspace
import dill as dl;
var1 = 22
var2 = 7
var3 = var1 / var2
dl.dump_session('Python_workspace.pkl');

# To load the Python workspace
dl.load(open('Python_workspace.pkl','rb'))
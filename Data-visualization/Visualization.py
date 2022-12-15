# -*- coding: utf-8 -*-
"""
Created on Tue Dec 13 13:22:50 2022

@author: Deepak
"""

import pandas as pd
import seaborn as sb
import matplotlib.pyplot as plt
from bokeh.palettes import magma
from bokeh.plotting import figure, output_file, show

data = pd.read_csv("iris.csv")
x = 'Petal.Length'
y = 'Sepal.Length'
sb.scatterplot(x=x, y=y, data=data,)
sb.lineplot(x=x, y=y, data=data, ci=False)
sb.barplot(x=x, y=y, data=data, ci=False)
sb.histplot(x=x, data=data, kde=True, hue='Species')
plt.hist(data[x])
plt.bar(data[x], data[y])

# %% Interactive data visualization in Bokeh
graph = figure(title="Bokeh Scatter Graph")
color = magma(150)
graph.scatter(data[x], data[y], color=color, legend_label="Length")
graph.scatter(data['Petal.Width'], data['Sepal.Width'], color=color, legend_label="Width")
graph.legend.click_policy = "hide"
show(graph)

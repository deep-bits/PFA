# -*- coding: utf-8 -*-
""".

Created on Wed Nov 23 21:08:35 2022
@author: Deepak
This script can be used to calculate moving averages
"""


import matplotlib as mpl
import matplotlib.pyplot as plt
import datetime
import pandas_datareader.data as web

start = datetime.datetime(2022, 1, 1)
end = datetime.datetime(2022, 12, 1)

df = web.DataReader("INFY", 'yahoo', start, end)
# df.tail()

# %%

close_px = df['Adj Close']
mavg = close_px.rolling(window=10).mean()

# %%

mpl.rc('figure', figsize=(8, 7))
close_px.plot(label='TCS')
mavg.plot(label='200-DMA')
plt.legend()

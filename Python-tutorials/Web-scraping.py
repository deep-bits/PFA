#!/usr/bin/env python
# coding: utf-8

# Web scraping is the process of using a program to extract content and data from a website.
# Web scraping extracts the underlying HTML code of a website.
# 
# This method can be used to scrape any public web page.
# Web pages might have restrictions on how you can use their data, so make sure to refer to their privacy policy if you intend to use a website's data.
# Yahoo Finance using scraping, as well as from the yfinance package.

# In[1]:

import pandas as pd
comp = 'Filename'
url = 'https://deep-bits.github.io/'
data = pd.read_html(url)
PnL = data[0]
PnL.to_csv('Filename.csv')
PnL

# In[2]:

import pandas as pd
import requests
url_link = 'https://deep-bits.github.io/'
r = requests.get(url_link, headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'})
print(r.text)
data = pd.read_html(r.text)
print(data)
prices = data[0]
prices.to_csv('Filename.csv')
prices[1:10]


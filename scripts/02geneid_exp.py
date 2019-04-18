#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt


# In[2]:


hoge = pd.read_csv('geneid_exp.csv')


# In[3]:


hoge.head()


# In[6]:


fig = plt.figure(figsize=(30,3))
ax = fig.add_subplot(111)

x = hoge.gene
y = hoge.value

ax.bar(x,y)

plt.show()


# In[ ]:





#!/usr/bin/env python
# coding: utf-8
#
# Python script to draw histram by gene expression diff
#
# Citation: Suppression of mitochondrial oxygen metabolism mediated by the transcription factor HIF-1 alleviates propofol-induced cell toxicity 
# Chisato Sumi, Akihisa Okamoto, Hiromasa Tanaka, Munenori Kusunoki, Tomohiro Shoji, Takeo Uba, Takehiko Adachi, Teppei Iwai, Kenichiro Nishi, Hiroshi Harada, Hidemasa Bono, Yoshiyuki Matsuo & Kiichi Hirota 
# Scientific Reports 8, Article number: 8987 (2018) 
# doi: 10.1038/s41598-018-27220-8
#
# Usage: 
# % python 02geneid_exp.py

# import libraries
# if not installed, install them by 
# % pip install pandas 
# % pip install matplotlib
import pandas as pd
import matplotlib.pyplot as plt

# read gene expresion diff in CSV
hoge = pd.read_csv('geneid_exp.csv')

hoge.head()

# draw histgram
fig = plt.figure(figsize=(30,3))
ax = fig.add_subplot(111)

x = hoge.gene
y = hoge.value

ax.bar(x,y)

plt.show()

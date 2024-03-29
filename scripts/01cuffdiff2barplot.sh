#!/bin/bash
# Script to extract expression data for genes in the list
# Citation: Suppression of mitochondrial oxygen metabolism mediated by the transcription factor HIF-1 alleviates propofol-induced cell toxicity 
# Chisato Sumi, Akihisa Okamoto, Hiromasa Tanaka, Munenori Kusunoki, Tomohiro Shoji, Takeo Uba, Takehiko Adachi, Teppei Iwai, Kenichiro Nishi, Hiroshi Harada, Hidemasa Bono, Yoshiyuki Matsuo & Kiichi Hirota 
# Scientific Reports 8, Article number: 8987 (2018) 
# doi: 10.1038/s41598-018-27220-8
#
# Usage: follow description below
# 
# Before executing this script, change directory where files are located.
# % cd /Users/bono/Documents/XXcollaboration/hirota

# 1. Make the list of genes to extract
# For our case, genes in the glycolysis metabolic pathway were retrieved from Ensembl Biomart.
# The name of the list obtained: mart_export.txt

# 2. Eliminate header line (first line), and cut the first column to generate the list of genes (1 gene in 1 line)

tail -n +2 mart_export.txt |cut -f 1 > geneid_list.txt

# 3. Extract genename and quantified expression values from cuffdiff output (gene_exp.diff),
# calculate log diff,
# extract genes in 'geneid_list.txt',
# numerically sort by the diff value,
# convert space to ',',
# and output to csv file.

cut -f 3,8,9 gene_exp.diff \
| awk '{ print $1,log($2+1)-log($3+1)}' \
| fgrep -f geneid_list.txt \
| sort -k2 -rn \
| sed 's/ /,/' \
> pre_geneid_exp.csv

# 4. Add header line to csv
cat header.csv pre_geneid_exp.csv > geneid_exp.csv
# output CSV file (geneid_exp.csv) can be visualized by Python code, '02geneid_exp.py'

#!/bin/bash
# Before executing this script, change directory where files are located.
# example: % c d   / U s e r s / b o n o / D o c u m e n t s / X X c o l l a b o r a t i o n / h i r o t a 
 
# 1. Make the list of genes to extract
# For our case, genes in the glycolysis metabolic pathway were retrieved from Ensembl Biomart.
# The name of the list obtained: mart_export.txt

# 2. Eliminate header line (first line), and cut the first column to generate the list of genes (1 gene in 1 line)

 t a i l   - n   + 2  m a r t _ e x p o r t . t x t  | c u t   - f  1   >   g e n e i d _ l i s t . t x t 

# 3. Extract genename and quantified expression values from cuffdiff output (gene_exp.diff),
# calculate log diff,
# extract genes in 'geneid_list.txt',
# numerically sort by the diff value,
# convert space to ',',
# and output to csv file.

 c u t   - f   3 , 8 , 9    g e n e _ e x p . d i f f  \
| a w k   ' {   p r i n t   $ 1 , l o g ( $ 2 + 1 ) - l o g ( $ 3 + 1 ) } '  \
|  f g r e p   - f   g e n e i d _ l i s t . t x t  \
|  s o r t   - k 2   - r n  \
 |  s e d   ' s /   / , / ' \
> pre_geneid_exp.csv

# 4. Add header line to csv
cat header.csv pre_geneid_exp.csv   >   g e n e i d _ e x p . csv
 
# output CSV file (g e n e i d _ e x p . csv) can be visualized by Python code, '02geneid_exp.py'

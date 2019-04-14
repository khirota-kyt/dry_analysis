# Scripts for the analysis 

## `README.md`
This file.

## `01cuffdiff2barplot.sh`
Mail shell script to make data for the analysis.
Read the comment lines for replicating this.
Files below are required.

- `gene_exp.diff` the output of cuffdiff (currently missing in this repository)
- `mart_export.txt` Ensembl Biomart output for your favorite selection
- `header.csv` Header file for CSV
- `geneid_exp.csv` Final output CSV file 

## `02geneid_exp.py`
Python script to make barplot.
Jupyter notebook version of this script is available (`geneid_exp.ipynb`).

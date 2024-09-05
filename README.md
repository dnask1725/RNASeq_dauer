# Wormcat
A study to reveal the differentially expressed genes during dauer and reproductive stages of the roundworm Caenorhabditis elegans
This project involves differential gene expression analysis using the DESeq2 package in R. The code reads count data from Excel files, merges the data, performs normalization, and runs differential expression analysis across multiple conditions. The results are then exported and visualized through MA plots, PCA, and histograms.

## Read mapping, feature counting, library normalization, quality checks, and differential gene expression analysis were performed using R version 3.1.0, bowtie2 version 2.2.3, SAMtools, HTSeq-count and DESeq


## Data Input
The input files used in this project are count matrices stored in Excel format. Each file contains the gene counts for different experimental conditions.

Single Files: DA26_b2t1.xlsx, noDA26_b2t1.xlsx, noDA34_b2t1.xlsx, noDA60_b2t1.xlsx, DA34_b2t1.xlsx, noDA24_b1t2.xlsx, noDA24_b2t1.xlsx

Paired File: paired.xlsx

*Raw RNA-seq reads are available in the NCBI Sequence Read Archive (SRA) database (accession number SRP116980)

## Merging Count Data
The code merges the count matrices using the "Geneid" column, which is common across all files. 

Output File:
counts_data.xlsx: Merged count matrix containing all gene counts across conditions.


## Metadata Input
metadata_for_DESeq.xlsx: Metadata file containing sample conditions, such as "condition" and "LibraryLayout," required for differential expression analysis.


## Differential Expression Steps:
1. Normalization: The count data is normalized using DESeq() and estimateSizeFactors(). The normalized counts are saved to a CSV file.
2. PCA Plot: A PCA plot is generated to visualize sample relationships based on the normalized count data.
3. Dispersion Estimation: Dispersion estimates are plotted to visualize the distribution of gene counts.
4. Differential Expression Testing: Differential expression analysis is performed using pairwise contrasts between different conditions.


## Output Files after DESeq:
1. DESeq_normalizedcounts2.csv: Contains normalized gene counts.
2. Significant/resXXSig.xlsx: Files containing significantly differentially expressed genes with adjusted p-value < 0.01 for each pairwise contrast.
3. RES/resXX.xlsx: Full differential expression Results file for each pairwise contrast.
   
Pairwise Comparisons:
Multiple pairwise contrasts are performed between different stages of development, such as:
1. res1: noDA24 vs. noDA26
2. res2: noDA24 vs. noDA34 ... and more
*Each contrast generates a file containing the results of differential expression, including log2 fold change and p-values.


## Visualization
The following plots are generated to visualize the differential expression results:

1. MA Plot: Displays log2 fold changes versus mean normalized counts for each gene.
2. Histograms: Histograms of p-values for each differential expression result are generated to assess the distribution of p-values.

Plots:
1. MA plots: Highlights significant genes with a log2 fold change outside the threshold.
2. PCA plots: Shows sample relationships across conditions.
3. Dispersion plots: Visualizes the gene count dispersions.

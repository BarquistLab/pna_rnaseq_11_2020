# RNA-seq analysis to Popella et al. 2021

- Dara analysis: Jakob Jung
- Experiments: Linda Popella
- Supervision: Lars Barquist, Jörg Vogel
- Start: September 2020

## Introduction

This project directory contains the analysis of RNA-Seq results obtained after Peptide-PNA challenge of *Salmonella enterica* subsp. *enterica*  serovar Typhimurium str. SL1344.

 

## Directory structure

The project is divided in 3 main directories:

- data: contains all raw, intermediate and final data of the process.  
- analysis: contains analysis files, such as figures, plots, tables, etc. 
- scripts: contains scripts to process data from the data directory.

Each directory as well as subdirectories should have their own README.md file with information on the scripts, data and analysis files. 



## Workflow

Here I describe the workflow, which can be followed to reproduce the RNA-Seq results & plots from the article. 



### 1. Prerequisites

For running the whole RNA-seq analysis, one needs following packages/tools/software:

- BBMap (v38.84)
- R along with packages from Bioconductor/CRAN 
- Linux Ubuntu (20.04) for commands & bash scripts
- featureCounts (v2.0.1) from Subread package

 

### 2. Mapping

All raw FastQ files are in the folder [./data/fastq](data/fastq) . Details on samples and upset of the experiment can be found in the methods section of the manuscript and information on the sequencing facility can be found in [./data/fastq/Doku_VB2077_Popella.pdf](./data/fastq/Doku_VB2077_Popella.pdf) and [./data/fastq/SeqData17.11.2020-1.pdf](./data/fastq/SeqData17.11.2020-1.pdf) . Navigate to [analysis/fastqc](./analysis/fastqc) to find fastQC quality statistics of the raw reads. 

 To run the mapping, run the bash script [./scripts/trimm_map_BB.sh](./scripts/trimm_map_BB.sh) . The script loops through the fastq-files, trims of adapters using BBDuk, maps against the reference Salmonella genome (reference fasta and gff files can be found in [./data/reference_sequences/](./data/reference_sequences/)) and counts the reads mapped to coding sequences and sRNAs using featureCounts.

Trimming, mapping and counting statistics are stored in the log file [./analysis/logfile.log](./analysis/logfile.log) . The directory [./data/rna_align](./data/rna_align) includes all bam-alignment files as well as the count table [./data/rna_align/counttable.txt](./data/rna_align/counttable.txt) . This count will be imported into R for Differential expression analysis.



### 3. Differential expression analysis

Some prerequisite files need to be added beforehand such as the files [./data/PHOPQ.tsv](./data/PHOPQ.tsv)  and [./data/link_lt_gn.tab](./data/link_lt_gn.tab) . How they were generated is described in the README.md files of respective directories.

To run the differential expression analysis, run the R markdown script [./scripts/PNA_RNASEQ.Rmd](./scripts/PNA_RNASEQ.Rmd) . This outputs all figures of the manuscript, which are saved as PDF and/or SVG files to the [./analysis](./analysis) directory. Only the heatmap in which we compared our results to antibiotics data is created by the script [./scripts/meta-analysis.Rmd](./scripts/meta-analysis.Rmd) . It might take up to 10 minutes to run this script on a low-memory laptop. 







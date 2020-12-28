# O'Rurke_metaanalysis



## Proteinortho

Here, we first use proteinortho (v6) to find orthologous genes.  

### Data preparation:

For this we need to get the transcripts of the reference SL1344 genome with gffreads:

```bash
gffread ../reference_sequences/FQ312003.1.gff -g ../reference_sequences/FQ312003_wplasmids.fa -w SL1344_transcripts.fna
```

Then, we also get the transcripts for *E. coli* mg1655. This we did by downloading the transcriptome (all CDS transcripts) from https://www.ncbi.nlm.nih.gov/assembly/GCF_000005845.2/ (03-12-2020). 

We want only the locus tags as our fasta header, which is why we modify them as follows using sed commands:

For SL1344:

```bash
sed -E 's/>gene-(SL1344_[^ ]*).*/>\1/' SL1344_transcripts.fna | sed -E 's/>rna-(.*)/>\1/' > SL1344_locustags.fna
```



And for E. coli:

```bash
sed -E 's/>.+\[locus_tag=([^]]*).*/>\1/' MG1655.fna | awk '/^>/{f=!d[$1];d[$1]=1}f' > MG1655_locustags.fna
```

Now we're ready to run proteinortho.



### run proteinortho

```bash
proteinortho6.pl -project=ecoli_salmonella ./MG1655_locustags.fna SL1344_locustags.fna -p=blastn
```



### AAC.01207-19-sd009(1).xlsx

Read count data downloaded from the publicaton of O'Rurke et al. downloaded on 06-08-2020. 

ab_data.csv contains same data, processed to csv.



### Other files

The other files are mainly intermediate files to prepare the proteinortho query and the results file of it (ecoli_salmonella.proteinortho.tsv).



### Checksums

521bf1fffbf245d3c28f701b3767cbbcaa3e98a6  AAC.01207-19-sd009(1).xlsx
05ddf4bffac7d804f8abccff608a0aa16e10582b  ab_data.csv
aca15da9638ebfc51517a353ea6a0970b651688e  ecoli_salmonella.info
aeed62aa812daa1d078cc6fe4598242c9479226c  ecoli_salmonella.proteinortho.tsv
dad8fa94cb4827efc00f7891851e8ae6b15f54c7  MG1655.fna
95523f9b6074d85ae3cbbe456833c61525cec56c  MG1655_locustags.fna
cca9d07d2a8779e37dec7d9af62d45adf31188a1  README.md
0f785da1032ddaeb3c24f7dd2181506b707fb08b  SL1344_locustags.fna
a5e6382351e7ff16a921e757da149cae04bc3372  SL1344_transcripts.fna
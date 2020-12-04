# O'Rurke et al.



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


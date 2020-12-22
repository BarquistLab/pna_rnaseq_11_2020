# data

Here, all data is stored

## reference_sequences

Includes  *Salmonella* reference sequence as well as anotation file.

## rna_align

Includes read count matrix and bam alignment files



## PhoPQ_analysis_salcom

Includes PhoPQ analysis data, downloaded from the web-server [Salcom]( https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006258) . 



## orurke_metaanalysis

Includes data from [O'Rurke et al. ](https://aac.asm.org/content/64/3/e01207-19.full) . 







## link_lt_gn.tab

- created 4 Dez 2020

Tab file connecting locus tag names to gene names. Used in r-scripts for linking. It was created using the gff reference file 

how it was created (bash command):

```bash
grep -P "(\tgene\t)|(\tpseudogene\t)|(\rRNA\t)|(\tRNA\t)" ./reference_sequences/FQ312003.1.gff |\
cut -f9 | \
sed -r 's/^.*Name=([^;]+).*locus_tag=([^; ]+).*$/\1\t\2/' | \
sed -r 's/^ID=.*Name=([^;]+).*$/\1\t\1/'  > link_lt_gn.tab
```


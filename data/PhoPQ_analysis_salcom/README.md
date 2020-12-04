# PhoPQ_analysis_salcom

THis data directory consists of 3 files.

### all_up.csv

This file contains gene names of all upregulated genes in RXR, TAT and KFF data sets. It is generated in the script "scripts/check_phopq_genes.R" and was used on 28th July to do a query in the salcom databases accesible in http://bioinf.gen.tcd.ie/cgi-bin/salcom.pl?db=SalComRegulon_HL and http://bioinf.gen.tcd.ie/cgi-bin/salcom.pl?_HL. Those datasets contain *Salmonella enterica* serovar Typhimurium gene expression data in SPI2 medium as well as PhoPQ knockout strains. 

In our study we used the TPM values of gene expressions in those conditons to check whether a PhoPQ response is present.



The outputs of the Salcom queries were saved as the 2 files: **salcom_kroger.txt**  and **salcom _other** and imported back into R.
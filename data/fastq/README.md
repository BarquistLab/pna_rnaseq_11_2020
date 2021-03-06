# FastQ

Here all raw fastq files are stored. they were downloaded from vertis on November 17 from vertis by the command:

```
wget -m ftp://IMIB_Vogel:PWD@192.68.213.25/17-11-2020/*
```



## SHAsums

shasums created using:

```bash
shasum *.fastq.gz
```

df6584306302cd1b835f820616260aa65c2320fb  ID-006413_S1_R1_001.fastq.gz
526db993dcfcf448b5213359b0fddb915071f964  ID-006414_S2_R1_001.fastq.gz
f099e738913bfd6b50d2c887a9bc3672e6eb15a2  ID-006415_S3_R1_001.fastq.gz
014fbd4426893f8335873695599c975cc557674d  ID-006416_S4_R1_001.fastq.gz
8dd18347ab5887f93af871405336949d88c4a1fb  ID-006417_S5_R1_001.fastq.gz
2c37694c838533e0b3c1a2e7a4f35a7484f8d434  ID-006418_S6_R1_001.fastq.gz
ffe16ffeec9a777003a716386eb028d9e894a6a2  ID-006419_S7_R1_001.fastq.gz
4fceff9788a317cf00aaace4b642a6858c00f557  ID-006420_S8_R1_001.fastq.gz
fa13d0d1cce46a7e0d2e5ce7bd5cbe0f8f9e6622  ID-006421_S9_R1_001.fastq.gz
147b58a20474175f3d928401739cdd44b86b8701  ID-006422_S10_R1_001.fastq.gz
e714b9581a03b810bb48fcd3578e194aba35ad2a  ID-006423_S11_R1_001.fastq.gz
e5ef5acf184e42ed0db62df35b691402b815bf0f  ID-006424_S12_R1_001.fastq.gz
d35bd00accd06d40c7b021355c523f5ae786b085  ID-006425_S13_R1_001.fastq.gz
ef955e2e54513437058cd2c241b8af2f108e00ca  ID-006426_S14_R1_001.fastq.gz
17c7b476d9ffad02a58301ef8535f9bafc1061c3  ID-006427_S15_R1_001.fastq.gz
7353dd9b9be6aef915a3a89ff6b312be349d442e  ID-006428_S16_R1_001.fastq.gz
7d9f19ae938d7a43c3718f47e5982003f0e9eb25  ID-006429_S17_R1_001.fastq.gz
fa12e81d3bd2c79f6f0961345704a20d9f3cc82c  ID-006430_S18_R1_001.fastq.gz
3136ef21cd95fe3a807e4d8e0ea8d87ce8cba770  ID-006431_S19_R1_001.fastq.gz
19b381c2ad9740e794226bb81ce3864a6a499075  ID-006432_S20_R1_001.fastq.gz
214114296f5dbd2553e3c24273cc7d4f6c10b6e8  ID-006433_S21_R1_001.fastq.gz
5515e882d4fc67c5cd847ffa549bc0ca07f79cd1  ID-006434_S22_R1_001.fastq.gz
2dc59087b22f00b19d5950b2db30d0d940b850b4  ID-006435_S23_R1_001.fastq.gz
7a71bf705bdd9f8a91c7557d9880e6a77a38f70f  ID-006436_S24_R1_001.fastq.gz
1790c614c00675de199449cb0ae019206b739a00  ID-006437_S25_R1_001.fastq.gz
2e841ecbe6a5167fbd2d3ad82929787d0550e9f4  ID-006438_S26_R1_001.fastq.gz
9b23778767a69325f613207e6635d62120674daa  ID-006439_S27_R1_001.fastq.gz
4e32b8762d41a63b28e8dc9195905999dce7fcc4  ID-006440_S28_R1_001.fastq.gz
275fe01d017ea1a507c586d86e29571576887039  ID-006441_S29_R1_001.fastq.gz
96c0d24d301debd43d84647661488efea9713e20  ID-006442_S30_R1_001.fastq.gz



## fastQC quality check

quality check was conducted using:

```bash
fastqc -o ../../analysis/fastqc/ *.fastq.gz
```

to put all fastqc files in the fastQC folder.



### Other files

the 2 pdf files are information from the vertis sequencing company. 

#!/bin/bash


PROJECT=../data
NAME=../data/fastq/ID-006413_S1_R1_001.fastq.gz

mkdir -pv $PROJECT/libs
NEWNAME=${NAME##*/}
NEWNAME=${NEWNAME%.fastq.gz}_trimmed.fastq.gz

~/bin/bbmap/bbduk.sh -Xmx1g in=$NAME ref=~/bin/bbmap/resources/adapters.fa t=20 out=$PROJECT/libs/${NEWNAME} ktrim=r k=23 mink=11 hdist=1 qtrim=r trimq=10

mkdir -pv $PROJECT/rna_align
DIR=$PROJECT/rna_align

~/bin/bbmap/bbmap.sh in=$i trimreaddescription=t  t=20 ref=$PROJECT/reference_sequences/FQ312003_wplasmids.fa  k=8 ambig=random outm=$DIR/$NAME.bam


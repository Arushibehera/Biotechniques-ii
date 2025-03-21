#!/bin/bash

cd RNAseqNGS/RNAseq_data
mkdir summary bashloopsam

NAMES="SAMPLE1 SAMPLE2"

for SAMPLE in $NAMES; do
hisat2 -p 8 --no-unal --dta \
-x indexes/chrX_tran \
-1 samples/${SAMPLE}_R1.fastq.gz \
-2 samples/${SAMPLE}_R2.fastq.gz \
-S bashloopsam/${SAMPLE}.sam \
--summary-file summary/$(SAMPLE)_summary.txt
done



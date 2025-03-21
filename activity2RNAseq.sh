#!/bin/bash 

cd RNAseqNGS/RNAseq_data

mkdir bashloopbam bashloopcount

NAMES="SAMPLE1 SAMPLE2"

for SAMPLE in $NAMES; do 
samtools sort -@ 8 \
-o bashloopbam/${SAMPLE}.sorted.bam bashloopsam/${SAMPLE}.sam

samtools index bashloopbam/${SAMPLE}.sorted.bam

htseq-count -i gene_id \
-f bam \
-t exon \
-m intersection-nonempty \
-s no bashloopbam/${SAMPLE}.sorted.bam genes/chrX.gtf > bashloopcount/${SAMPLE}.count.txt
done

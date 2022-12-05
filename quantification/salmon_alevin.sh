#! /bin/bash

DATA=/data/users/sushmanagaraj/projects/singlecell/Bai_Nodose_ganglion/salmon/sra
R1_fastq=`ls ${DATA}/${1}_2.fastq`
R2_fastq=`ls ${DATA}/${1}_3.fastq`
#mkdir $1

salmon alevin -l ISR -i /data/users/sushmanagaraj/ref/mm/vM25/salmon_index/ -1 $R1_fastq -2 $R2_fastq -p $SLURM_CPUS_PER_TASK -o . --tgMap /data/users/sushmanagaraj/ref/mm/vM25/txp2gene.tsv --chromium --dumpFeatures --dumpBfh


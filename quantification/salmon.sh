#! /bin/bash

DATA=/data/users/sushmanagaraj/projects/singlecell/Bai_Nodose_ganglion/salmon/sra

salmon quant -i /data/users/sushmanagaraj/ref/mm/vM25/salmon_index/ -l IU -r ${DATA}/${1}.fastq --validateMappings -p $SLURM_CPUS_PER_TASK --gcBias -o .

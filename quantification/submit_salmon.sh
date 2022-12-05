#! /bin/bash

mkdir $1
sbatch --cpus-per-task=1 --chdir=$PWD/$1 --job-name=$1 --output=slurm-${1}-%A salmon.sh $1

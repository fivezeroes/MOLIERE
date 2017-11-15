#!/bin/bash
#PBS -N a2c
#PBS -l select=1:ncpus=24:mem=100gb,walltime=72:00:00
#PBS -o /home/jsybran/jobLogs/a2c.out
#PBS -e /home/jsybran/jobLogs/a2c.err
#PBS -M jsybran@clemson.edu
#PBS -m ea

module load gcc

PATH=$PATH:/zfs/safrolab/users/jsybran/moliere/code/components/links

DATA=/zfs/safrolab/users/jsybran/moliere/data/yearlySubsets/2010
DICT_FILE=$DATA/fastText/canon.vec
ABS_FILE=$DATA/processedText/abstracts.txt
CEN_FILE=$DATA/fastText/centroids.data

makeCentroids -d $DICT_FILE -a $ABS_FILE -c $CEN_FILE



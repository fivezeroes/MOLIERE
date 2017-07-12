#/bin/bash
#PBS -N clusHpHy
#PBS -l select=1:ncpus=24:mem=100gb,walltime=24:00:00
#PBS -o /home/jsybran/jobLogs/clusterHypo2.out
#PBS -e /home/jsybran/jobLogs/clusterHypo2.err
#PBS -M jsybran@clemson.edu
#PBS -m ea

PATH=$PATH:/zfs/safrolab/users/jsybran/moliere/code/pipeline/tools

DATA=/scratch2/jsybran/hydrology
DIJK_FILE=$DATA/hydrology.dijkstra
LABEL_FILE=$DATA/centAndPhrases.labels
mkdir -p $DATA/tmp
TMP_FILE=$DATA/tmp/hydroArr.jl
RES_FILE=clusterResults.jl

hypoClustering -d $DIJK_FILE -l $LABEL_FILE -w $TMP_FILE -f $RES_FILE -s 1 -e 13

#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -M ks3379@drexel.edu
#$ -P rosenclassPrj
#$ -pe openmpi_ib 1
#$ -l h_rt=48:00:00
#$ -l h_vmem=32G
#$ -l m_mem_free=32G

. /etc/profile.d/modules.sh
module load shared
module load proteus
module load sge/univa
module load gcc/4.8.1
module load python/anaconda3

python /lustre/scratch/ks3379/Tutorial8/MiCoP/MiCoP/run-bwa.py /scratch/ks3379/Tutorial8/MiCoP/MiCoP/simulated_data/grinder-fungi-low-complexity-reads.fa --fungi --paired --output /scratch/ks3379/Tutorial8/MiCoP/MiCoP/demo/alignments_simulated_fungi_low.sam

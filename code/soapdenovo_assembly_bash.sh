#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH --ntasks-per-node=8
#SBATCH -J soapdenovo_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user carolina.pitabarros@gmail.com
# Load modules
module load bioinfo-tools
module load soapdenovo-trans/1.04


SOAPdenovo-63mer all -s /home/carolpb/GenomeAnalysis/code/soapdenovo_assembly_config.txt -K 49 -o /home/carolpb/GenomeAnalysis/results/2_Assembly_dna/output49 -p $SLURM_NTASKS_PER_NODE

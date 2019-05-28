#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J run_gapcloser
#SBATCH --mail-type=ALL
#SBATCH --mail-user carolina.pitabarros@gmail.com
# Load modules
module load bioinfo-tools
#module load GapCloser
module load soapdenovo/2.04-r240
# Your commands

GapCloser -b /home/carolpb/GenomeAnalysis/code/soapdenovo_assembly_config.txt -a /home/carolpb/GenomeAnalysis/results/3_Assembly_soapdenovo_dna/output49.scafSeq -o /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta

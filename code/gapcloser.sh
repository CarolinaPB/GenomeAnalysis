#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J run_gapcloser
#SBATCH --mail-type=ALL
#SBATCH --mail-user carolina.pitabarros@gmail.com
# Load modules
module load bioinfo-tools
#module load GapCloser
#module load soapdenovo-soapdenovo/2.04-r240
# Your commands

GapCloser -b /home/carolpb/GenomeAnalysis/code/soapdenovo_assembly_config.txt -a /domus/h1/carolpb/GenomeAnalysis/results/2_Assembly_dna/ -o /home/carolpb/GenomeAnalysis/results/2_GapCloser_dna/output_gapcloser.fasta

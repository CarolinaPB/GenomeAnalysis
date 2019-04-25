#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J run_mummer
#SBATCH --mail-type=ALL
#SBATCH --mail-user carolina.pitabarros@gmail.com
# Load modules
module load bioinfo-tools
module load MUMmer
# Your commands

mummer -mum -b -c /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334.fna.gz //home/carolpb/GenomeAnalysis/results/2_GapCloser_dna/output_gapcloser.fasta /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta > /home/carolpb/GenomeAnalysis/results/5_Result_Mummer/output_mummer.mums

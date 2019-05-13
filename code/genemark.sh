#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J maker2_paper_genemaker
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load GeneMark

#run this from output directory

gmes_petap.pl -ES --evidence /home/carolpb/GenomeAnalysis/results/4_Transcriptome_Assembly_Trinity/Trinity_concat.fasta -sequence /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta

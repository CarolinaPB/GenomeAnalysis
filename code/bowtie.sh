#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:30:00
#SBATCH -J bowtie
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules

### Very fast, can be ran on the command line (took 7seconds)
module load bioinfo-tools
module load tophat

bowtie2-build -c [/home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fa] /home/carolpb/GenomeAnalysis/results/7_bowtie/ref

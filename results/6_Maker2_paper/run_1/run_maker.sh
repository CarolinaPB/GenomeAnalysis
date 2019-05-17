#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J maker2_paper_augustus
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load maker
export AUGUSTUS_CONFIG_PATH="/home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/config"
# Your commands
maker

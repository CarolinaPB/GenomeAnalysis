#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 220:00:00
#SBATCH -J spades
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load spades
# Your commands
spades.py --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2P.fastq.gz --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2P.fastq.gz --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2P.fastq.gz --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2P.fastq.gz --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2P.fastq.gz --mp-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1P.fastq.gz --mp-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2P.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2U.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2U.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2U.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2U.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2U.fastq.gz --pe-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1U.fastq.gz --pe-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2U.fastq.gz -o /home/carolpb/GenomeAnalysis/results/3_Assembly_spades

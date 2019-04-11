#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 200:00:00
#SBATCH -J spades
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load spades/3.12.0
# Your commands
spades.py --mp1-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1P.fastq.gz --mp1-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2P.fastq.gz --pe1-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1U.fastq.gz --pe1-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2U.fastq.gz --mp2-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1P.fastq.gz --mp2-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2P.fastq.gz --pe2-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1U.fastq.gz --pe2-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2U.fastq.gz --mp3-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1P.fastq.gz --mp3-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2P.fastq.gz --pe3-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1U.fastq.gz --pe3-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2U.fastq.gz --mp4-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1P.fastq.gz --mp4-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2P.fastq.gz --pe4-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1U.fastq.gz --pe4-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2U.fastq.gz --mp5-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1P.fastq.gz --mp5-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2P.fastq.gz --pe5-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1U.fastq.gz --pe5-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2U.fastq.gz --mp6-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1P.fastq.gz --mp6-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2P.fastq.gz --pe6-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1U.fastq.gz --pe6-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2U.fastq.gz -o /home/carolpb/GenomeAnalysis/results/3_Assembly_spades

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
spades.py\
 --pe1-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1P.fastq.gz\
 --pe1-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2P.fastq.gz\
 --pe1-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_1U.fastq.gz\
 --pe1-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819794.trim_2U.fastq.gz\
 --pe2-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1P.fastq.gz\
 --pe2-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2P.fastq.gz\
 --pe2-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_1U.fastq.gz\
 --pe2-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819795.trim_2U.fastq.gz\
 --mp1-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1P.fastq.gz\
 --mp1-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2P.fastq.gz\
 --mp1-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_1U.fastq.gz\
 --mp1-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819796.trim_2U.fastq.gz\
 --pe3-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1P.fastq.gz\
 --pe3-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2P.fastq.gz\
 --pe3-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_1U.fastq.gz\
 --pe3-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819797.trim_2U.fastq.gz\
 --mp2-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1P.fastq.gz\
 --mp2-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2P.fastq.gz\
 --mp2-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_1U.fastq.gz\
 --mp2-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819798.trim_2U.fastq.gz\
 --mp3-1 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1P.fastq.gz\
 --mp3-2 /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2P.fastq.gz\
 --mp3-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_1U.fastq.gz\
 --mp3-s /home/carolpb/GenomeAnalysis/data/wgs/sel2_SRR5819799.trim_2U.fastq.gz\
 -o /home/carolpb/GenomeAnalysis/results/3_Assembly_spades

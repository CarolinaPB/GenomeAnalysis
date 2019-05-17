#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J run_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user carolina.pitabarros@gmail.com
# Load modules
module load bioinfo-tools
module load trimmomatic
# Your commands

java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 /home/carolpb/GenomeAnalysis/data/rna/raw/sel2_SRR1719266.2.fastq.gz /home/carolpb/GenomeAnalysis/data/rna/raw/sel2_SRR1719266.1.fastq.gz /home/carolpb/GenomeAnalysis/data/rna/trimmed/sel2_SRR1719266.2_trimmed_P.fastq.gz /home/carolpb/GenomeAnalysis/data/rna/trimmed/sel2_SRR1719266.2_trimmed_U.fastq.gz /home/carolpb/GenomeAnalysis/data/rna/trimmed/sel2_SRR1719266.1_trimmed_P.fastq.gz /home/carolpb/GenomeAnalysis/data/rna/trimmed/sel2_SRR1719266.1_trimmed_U.fastq.gz

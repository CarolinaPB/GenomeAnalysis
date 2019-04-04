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

# Your commands

java -jar trimmomatic-0.35.jar PE -phred33 sel2_SRR1719266.2.fastq.gz sel2_SRR1719266.1.fastq.gz sel2_SRR1719266.2_trimmed_P.fastq.gz sel2_SRR1719266.2_trimmed_U.fastq.gz sel2_SRR1719266.1_trimmed_P.fastq.gz sel2_SRR1719266.1_trimmed_U.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

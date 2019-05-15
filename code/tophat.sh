#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:30:00
#SBATCH -J tophat
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load tophat

tophat /home/carolpb/GenomeAnalysis/results/7_bowtie\
[/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719013.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719014.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719015.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719016.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719017.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719018.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719204.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719206.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719207.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719208.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719209.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719211.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719212.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719213.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719214.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719241.trim_1P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719242.trim_1P.fastq.gz] \
[/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719013.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719014.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719015.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719016.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719017.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719018.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719204.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719206.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719207.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719208.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719209.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719211.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719212.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719213.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719214.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719241.trim_2P.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719242.trim_2P.fastq.gz] \
[/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719013.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719014.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719015.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719016.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719017.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719018.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719204.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719206.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719207.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719208.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719209.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719211.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719212.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719213.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719214.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719241.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719242.trim_1U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719013.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719014.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719015.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719016.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719017.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719018.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719204.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719206.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719207.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719208.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719209.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719211.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719212.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719213.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719214.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719241.trim_2U.fastq.gz,\
/home/carolpb/GenomeAnalysis/data/rna/pre_trimmed/sel2_SRR1719242.trim_2U.fastq.gz]
-o/ /home/carolpb/GenomeAnalysis/results/8_tophat

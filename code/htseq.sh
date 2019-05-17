#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:05:00
#SBATCH -J htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load htseq

# my .gff file had fasta appended at the end. (fasta started at line 24077)
# remove the fasta part and create a new file:
head -24077 /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped.all.gff > /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff

htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/htseq_results.txt

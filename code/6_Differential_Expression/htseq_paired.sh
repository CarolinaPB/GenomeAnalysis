# Load modules
module load bioinfo-tools
module load htseq

# my .gff file had fasta appended at the end. (fasta started at line 24077)
# remove the fasta part and create a new file:
head -24077 /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped.all.gff > /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff

#for total counts
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/htseq_results.txt

# cs15 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs15_fore/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs15_fore_htseq_results.txt

# cs15 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs15_hind/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs15_hind_htseq_results.txt

# cs16 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs16_fore/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs16_fore_htseq_results.txt

# cs16 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs16_hind/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs16_hind_htseq_results.txt

# cs17 + forelimb --> worked
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs17_fore/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs17_fore_htseq_results.txt

# cs17 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/carolpb/GenomeAnalysis/results/8_tophat/paired/cs17_hind/accepted_hits.bam /home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff > /home/carolpb/GenomeAnalysis/results/9_htseq_count/cs17_hind_htseq_results.txt

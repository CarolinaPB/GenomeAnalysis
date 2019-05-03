# run in the command line
module load bioinfo-tools
module load MUMmer

# to run mummer
mummer -mum -b -c /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta > /home/carolpb/GenomeAnalysis/results/5_Result_Mummer/output_mummer.mums

# to run mummerplot
mummerplot -postscript -p mummer output_mummer.mums

## NUCMER
# to run nucmer soap
nucmer --prefix=nucmer_soap /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta
# to plot results from nucmer
mummerplot -x "[0,2500000]" -y "[0,3000000]" --png --layout --filter -p soapdenovo_mummer /home/carolpb/GenomeAnalysis/results/5_Result_nucmer/nucmer_soap.delta -R //home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta -Q /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta


# to run nucmer spades
nucmer --prefix=nucmer_spades /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta
# to plot results from nucmer
mummerplot -x "[0,2500000]" -y "[0,2300000]" --png --layout --filter -p spades_mummer /home/carolpb/GenomeAnalysis/results/5_Result_nucmer/nucmer_spades.delta -R //home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta -Q /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta

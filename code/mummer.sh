# run in the command line
module load bioinfo-tools
module load MUMmer

# to run mummer
mummer -mum -b -c /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta > /home/carolpb/GenomeAnalysis/results/5_Result_Mummer/output_mummer.mums

# to run mummerplot
mummerplot -postscript -p mummer output_mummer.mums

# to run nucmer soap
nucmer --prefix=nucmer_soap /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/4_GapCloser_dna/output_gapcloser.fasta

nucmer --prefix=ref_qry ref.fasta qry.fasta

show-coords -rcl nucmer_soap.delta > nucmer_soap.coords

show-aligns nucmer_soap.delta refname nucmer_soap > nucmer_soap.aligns

show-tiling ref_qry.delta > ref_qry.tiling


# to run nucmer spades
nucmer --prefix=nucmer_spades /home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta /home/carolpb/GenomeAnalysis/results/3_Assembly_spades/scaffolds.fasta

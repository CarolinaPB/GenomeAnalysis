#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J soapdenovo_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se
# Load modules
module load bioinfo-tools
module load soapdenovo

/sw/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-127mer all -s /home/carolpb/GenomeAnalysis/code/soapdenovo_assembly_config.txt -K 49 -o /home/carolpb/GenomeAnalysis/results/3_Assembly_soapdenovo_dna/output49

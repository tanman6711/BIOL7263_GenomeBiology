#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=rnaspades_assembly_%J_stdout.txt
#SBATCH --error=rnaspades_assembly_%J_stderr.txt
#SBATCH --job-name=rnaspades_assembly
# 

# Define the variables
READ1="/scratch/biol726307/BIOL7263_Genomics/Project/1E_S11_trimmed.fastq.gz"  # Path to your forward reads
READ2="/scratch/biol726307/BIOL7263_Genomics/Project/1E_S11_trimmed2.fastq.gz"  # Path to your reverse reads
READ3="/scratch/biol726307/BIOL7263_Genomics/Project/2E_S13_trimmed.fastq.gz"
READ4="/scratch/biol726307/BIOL7263_Genomics/Project/2E_S13_trimmed2.fastq.gz"
READ5="/scratch/biol726307/BIOL7263_Genomics/Project/3E_S15_trimmed.fastq.gz"
READ6="/scratch/biol726307/BIOL7263_Genomics/Project/3E_S15_trimmed2.fastq.gz"
READ7="/scratch/biol726307/BIOL7263_Genomics/Project/4E_S17_trimmed.fastq.gz"
READ8="/scratch/biol726307/BIOL7263_Genomics/Project/4E_S17_trimmed2.fastq.gz"
READ9="/scratch/biol726307/BIOL7263_Genomics/Project/5E_S19_trimmed.fastq.gz"
READ10="/scratch/biol726307/BIOL7263_Genomics/Project/5E_S19_trimmed2.fastq.gz"
READ11="/scratch/biol726307/BIOL7263_Genomics/Project/6E_S21_trimmed.fastq.gz"
READ12="/scratch/biol726307/BIOL7263_Genomics/Project/6E_S21_trimmed2.fastq.gz"
READ13="/scratch/biol726307/BIOL7263_Genomics/Project/7E_S23_trimmed.fastq.gz"
READ14="/scratch/biol726307/BIOL7263_Genomics/Project/7E_S23_trimmed2.fastq.gz"




OUTPUT_DIR="/scratch/biol726307/BIOL7263_Genomics/Project/AssemblyResults"  # Path to the output directory
THREADS=16  # Number of CPU cores to use
MEMORY=16  # Memory to allocate in GB


# Run rnaSPAdes
rnaspades.py -1 $READ1 -2 $READ2 -3 $READ3 -4 $READ4 -5 $READ5 -6 $READ6 -7 $READ7 -8 $READ8 -9 $READ9 -10 $READ10 -11 $READ11 -12 $READ12 -13 $READ13 -14 $READ14 -t $THREADS -m $MEMORY -o $OUTPUT_DIR

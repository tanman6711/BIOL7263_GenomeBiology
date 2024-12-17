#!/bin/bash
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --output=fastqc_array_%A_%a_out.txt
#SBATCH --error=fastqc_array_%A_%a_err.txt
#SBATCH --job-name=fastqc_array
#SBATCH --time=01:00:00
#SBATCH --array=1-14  # Updated array size

# make directory 
mkdir -p fastqc_results

# Read the input file paths from the array
FILE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" /scratch/biol726307/BIOL7263_Genomics/Project/fastqc_input_files.txt)

# Run FastQC on the input file
fastqc -o fastqc_results -t 4 $FILE

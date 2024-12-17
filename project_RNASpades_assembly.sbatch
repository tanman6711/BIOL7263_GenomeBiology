#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=rnaspades_assembly_%J_stdout.txt
#SBATCH --error=rnaspades_assembly_%J_stderr.txt
#SBATCH --job-name=rnaspades_assembly
# 

# Make the shell script executable
chmod +x /scratch/biol726307/BIOL7263_Genomics/Project/project.sh

# Run the shell script
/scratch/biol726307/BIOL7263_Genomics/Project/project.sh
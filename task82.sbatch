#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=task82%J_stdout.txt
#SBATCH --error=task82%J_stderr.txt
#SBATCH --job-name=task82
# 

bash /home/biol726307/BIOL7263_Genomics/scripts/BWA/task82.sh
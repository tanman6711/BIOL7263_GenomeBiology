#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 8G
#SBATCH --output=trim_%J_stdout.txt
#SBATCH --error=trim_%J_stderr.txt
#SBATCH --job-name=trim
# 

bash /home/biol726307/BIOL7263_Genomics/scripts/Project/trim.sh
#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 8G
#SBATCH --output=pseu_trim_%J_stdout.txt
#SBATCH --error=pseu_trim_%J_stderr.txt
#SBATCH --job-name=pseu_trim
# 

bash /home/biol726307/BIOL7263_Genomics/scripts/pseudomonas/pseudo_trim.sh
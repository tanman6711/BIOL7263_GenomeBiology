#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem=8G
#SBATCH --output=qaulimap_ecoli_%J_stdout.txt
#SBATCH --error=qualimap_ecoli_%J_stderr.txt
#SBATCH --job-name=qualimap_ecoli
#

bash /home/biol726307/BIOL7263_Genomics/scripts/BWA/qualimap.sh
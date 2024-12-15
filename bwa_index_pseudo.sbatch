#!/bin/bash

#SBATCH --job-name=mapping_index      # Job name
#SBATCH --partition=normal          # Partition to submit to
#SBATCH --ntasks=1                    # Number of tasks (typically 1 for this type of job)
#SBATCH --cpus-per-task=4             # Number of CPU cores per task
#SBATCH --mem=8G                      # Memory allocation (adjust as needed)
#SBATCH --time=01:00:00               # Time limit (hh:mm:ss)
#SBATCH --output=mapping_index_out.txt    # Standard output file
#SBATCH --error=mapping_index_err.txt     # Standard error file

bash /home/biol726307/BIOL7263_Genomics/scripts/bwa_index_pseudo.sh
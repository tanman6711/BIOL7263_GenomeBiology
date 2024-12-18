#!/bin/bash
#SBATCH --job-name=augustus_annotation         # Job name
#SBATCH --output=augustus_annotation_out.txt       # Output log file
#SBATCH --error=augustus_annotation_err.txt        # Error log file
#SBATCH --nodes=1                              # Number of nodes
#SBATCH --ntasks=1                             # Number of tasks
#SBATCH --cpus-per-task=4                      # Number of CPU cores
#SBATCH --mem=16G                              # Memory allocation


# Run the annotation shell script
bash run_augustus_annotation.sh
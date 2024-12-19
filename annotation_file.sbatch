#!/bin/bash
#SBATCH --job-name=process_blast_annotations    # Job name
#SBATCH --output=process_blast_annotations_output.txt  # Standard output log
#SBATCH --error=process_blast_annotations_err.txt   # Standard error log
#SBATCH --nodes=1                               # Number of nodes
#SBATCH --ntasks=1                              # Number of tasks
#SBATCH --cpus-per-task=4                       # Number of CPU cores
#SBATCH --mem=8G                                # Memory allocation


# Run the shell script to process the annotations
bash /home/biol726307/BIOL7263_Genomics/scripts/Project/annotation_file.sh
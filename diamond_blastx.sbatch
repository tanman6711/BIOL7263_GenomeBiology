#!/bin/bash
#SBATCH --job-name=diamond_blastx            # Job name
#SBATCH --output=diamond_blastx.out          # Output log file
#SBATCH --error=diamond_blastx.err           # Error log file
#SBATCH --nodes=1                            # Number of nodes
#SBATCH --ntasks=1                           # Number of tasks
#SBATCH --cpus-per-task=8                    # Number of CPU cores
#SBATCH --mem=16G                            # Memory allocation


# Run the DIAMOND BLASTX script
bash diamond_blastx.sh
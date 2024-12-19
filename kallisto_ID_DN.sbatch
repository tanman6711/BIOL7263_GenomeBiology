#!/bin/bash
#SBATCH --job-name=kallisto_id               # Job name
#SBATCH --output=kallisto_id_out.txt             # Output log file
#SBATCH --error=kallisto_id_err.txt              # Error log file
#SBATCH --nodes=1                            # Number of nodes
#SBATCH --ntasks=1                           # Number of tasks
#SBATCH --cpus-per-task=4                    # Number of CPU cores
#SBATCH --mem=8G                             # Memory allocation


# Run the kallisto_ID.sh script
bash /scratch/biol726307/BIOL7263_Genomics/Project/kallisto_ID_de_novo.sh
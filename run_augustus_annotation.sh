#!/bin/bash

# Load AUGUSTUS module
ml AUGUSTUS/3.4.0-foss-2020b

# Define the AUGUSTUS config path
CONFIG_PATH="/scratch/biol726307/BIOL7263_Genomics/Project/annotation"  # Update with your desired path for the config directory

# Check if the config directory exists; if not, download it
if [ ! -d "$CONFIG_PATH" ]; then
    echo "Downloading AUGUSTUS config directory..."
    git clone --branch 3.4.0 https://github.com/Gaius-Augustus/Augustus.git
    mv Augustus/config "$CONFIG_PATH"
    rm -rf Augustus
fi

# Set AUGUSTUS_CONFIG_PATH environment variable
export AUGUSTUS_CONFIG_PATH="$CONFIG_PATH"

# Define input and output files
ASSEMBLY="invertopsins.fasta"       # Your input transcriptome assembly
GFF_OUTPUT="invertopsins.gff"       # Output GFF file
PROTEIN_OUTPUT="invertopsins.aa"    # Output protein sequences file

# Run AUGUSTUS to perform annotation
echo "Running AUGUSTUS for gene prediction..."
augustus --species=fly --protein=on "$ASSEMBLY" > "$GFF_OUTPUT"

# Extract protein sequences using getAnnoFasta.pl
echo "Extracting protein sequences..."
getAnnoFasta.pl "$GFF_OUTPUT"

echo "Annotation completed. Results saved to $GFF_OUTPUT and $PROTEIN_OUTPUT."
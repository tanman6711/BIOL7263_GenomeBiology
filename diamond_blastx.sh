#!/bin/bash

# Define paths and parameters
DATABASE="/scratch/biol726307/BIOL7263_Genomics/Project/annotation/invertopsins.dmnd"  # DIAMOND database path
QUERY="invertopsins.fasta"                                                             # Query FASTA file
OUTPUT="invertopsins_diamond_results.txt"                                              # Output file
EVALUE="1e-10"                                                                          # E-value threshold

# Run DIAMOND BLASTX
echo "Running DIAMOND BLASTX..."
diamond blastx -d "$DATABASE" -q "$QUERY" -o "$OUTPUT" -f 6 -e "$EVALUE"

echo "DIAMOND BLASTX completed. Results saved to $OUTPUT."
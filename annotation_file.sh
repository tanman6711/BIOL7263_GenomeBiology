#!/bin/bash

# Define file paths
BLAST_RESULTS="/scratch/biol726307/BIOL7263_Genomics/Project/mapping_to_assembly/annotation_results.blast"
OUTPUT_DIR="/scratch/biol726307/BIOL7263_Genomics/Project/mapping_to_assembly/annotated"
BEST_HITS="${OUTPUT_DIR}/best_hits.blast"
TRANSCRIPT_TO_GENE_MAP="${OUTPUT_DIR}/transcript_to_gene_map.txt"
ANNOTATIONS="${OUTPUT_DIR}/gene_annotations.txt"
FINAL_ANNOTATION="${OUTPUT_DIR}/annotated_results.txt"

# Create output directory if it doesn’t exist
mkdir -p "$OUTPUT_DIR"

# Step 1: Extract best hits from the BLAST results
awk '!seen[$1]++' "$BLAST_RESULTS" > "$BEST_HITS"

# Step 2: Map XM_ transcript IDs to Gene IDs
echo "Mapping XM_ transcript IDs to gene IDs..."
cut -f2 "$BEST_HITS" | grep 'XM_' | while read -r transcript_id; do
    esearch -db nuccore -query "$transcript_id" | elink -target gene | efetch -format uid >> "$TRANSCRIPT_TO_GENE_MAP"
done

# Step 3: Remove duplicates and format
sort -u "$TRANSCRIPT_TO_GENE_MAP" -o "$TRANSCRIPT_TO_GENE_MAP"

# Step 4: Fetch gene annotations using gene IDs
echo "Fetching gene annotations..."
while read -r gene_id; do
    esummary -db gene -id "$gene_id" >> "$ANNOTATIONS"
done < "$TRANSCRIPT_TO_GENE_MAP"

# Step 5: Integrate annotations with best hits
awk 'NR==FNR {a[$1]=$0; next} {print $0, a[$2]}' "$ANNOTATIONS" "$BEST_HITS" > "$FINAL_ANNOTATION"

echo "Annotation processing completed. Output in $OUTPUT_DIR"
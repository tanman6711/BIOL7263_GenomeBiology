#make a new folder for the mapping output
mkdir /scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/mapping_to_assembly/

#make the index and write it to the new folder
bwa index -p /scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/mapping_to_assembly/hybrid_assembly \
/scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/assembly/hybrid/contigs.fasta 
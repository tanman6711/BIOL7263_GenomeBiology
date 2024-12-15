mkdir -p /scratch/biol726301/BIOL7263_Genomics/pseudomonas_fastqc_output

fastqc /scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/SRR491287_1.fastq.gz -o /scratch/biol726301/BIOL7263_Genomics/pseudomonas_fastqc_output/
fastqc /scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/SRR491287_2.fastq.gz -o /scratch/biol726301/BIOL7263_Genomics/pseudomonas_fastqc_output/
fastqc /scratch/biol726307/BIOL7263_Genomics/pseudomonas_gm41/SRR1042836_subreads.fastq.gz -o /scratch/biol726301/BIOL7263_Genomics/pseudomonas_fastqc_output/
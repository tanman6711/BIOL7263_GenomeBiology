# Final project report  
# Title: Opsins and differentially expressed phototransduction genes in Alpheus heterochaelis  
  
This is my final report for my project on snapping shrimp eye transcriptomics!  
For this project I wanted to look at what opsin genes are expressed in snapping shrimp.
I also wanted to look at differential expression in genes related to phototransduction
between animals that were light and dark adapted. Currently there is no work done on what
opsin genes are found in snapping shrimp or how they regulate phototransduction genes when
light or dark adapted! Thus, my adventure began!  

# Project Outline 
My project had 10 steps:
![Project Outline Figure](outline.png)  
# Samples  
Here are the samples I used and their treatment groups
1E - Light adapted A. heterochaelis
 
2E - Light adapted A. heterochaelis

3E - Light adapted A. heterochaelis
 
4E - Light adapted A. heterochaelis
 
5E - Dark adapted A. heterochaelis

6E - Dark adapted A. heterochaelis
 
7E - Dark adapted A. heterochaelis  

# Project steps:
1. Fast QC


[Array FastQC sbatch](fastqc_array.sbatch)


- Light adapted:

 
[1E R1 QC FastQC HTML](/fastqc_results_project/1E_S11_R1_001_fastqc.html)

[1E R2 QC FastQC HTML](/fastqc_results_project/1E_S11_R2_001_fastqc.html)

[2E R1 QC FastQC HTML](/fastqc_results_project/2E_S13_R1_001_fastqc.html)

[2E R2 QC FastQC HTML](/fastqc_results_project/2E_S13_R2_001_fastqc.html)

[3E R1 QC FastQC HTML](/fastqc_results_project/3E_S15_R1_001_fastqc.html)

[3E R2 QC FastQC HTML](/fastqc_results_project/3E_S15_R2_001_fastqc.html)

[4E R1 QC FastQC HTML](/fastqc_results_project/4E_S17_R1_001_fastqc.html)

[4E R2 QC FastQC HTML](/fastqc_results_project/4E_S17_R2_001_fastqc.html)

- Dark adapted:


[5E R1 QC FastQC HTML](/fastqc_results_project/5E_S19_R1_001_fastqc.html)

[5E R2 QC FastQC HTML](/fastqc_results_project/5E_S19_R2_001_fastqc.html)

[6E R1 QC FastQC HTML](/fastqc_results_project/6E_S21_R1_001_fastqc.html)

[6E R2 QC FastQC HTML](/fastqc_results_project/6E_S21_R2_001_fastqc.html)

[7E R1 QC FastQC HTML](/fastqc_results_project/7E_S23_R1_001_fastqc.html)

[7E R2 QC FastQC HTML](/fastqc_results_project/7E_S23_R2_001_fastqc.html)

2. Trim the raw transcriptome FASTA files

[Trim sbatch](trim.sbatch)

[Trim sh](trim.sh)

- Trimmed files


[1E_S11_Trim1](1E_S11_trimmed.fastq.gz)

[1E_S11_Trim2](1E_S11_trimmed2.fastq.gz)

[2E_S13_Trim1](2E_S13_trimmed.fastq.gz)

[2E_S13_Trim2](2E_S13_trimmed2.fastq.gz)

[3E_S15_Trim1](3E_S15_trimmed.fastq.gz)

[3E_S15_Trim2](3E_S15_trimmed1.fastq.gz)

[4E_S17_Trim1](4E_S17_trimmed.fastq.gz)

[4E_S17_Trim2](4E_S17_trimmed2.fastq.gz)

[5E_S19_Trim1](5E_S19_trimmed.fastq.gz)

[5E_S19_Trim2](5E_S19_trimmed1.fastq.gz)

[6E_S21_Trim1](6E_S21_trimmed.fastq.gz)

[6E_S21_Trim2](6E_S21_trimmed1.fastq.gz)

[7E_S23_Trim1](7E_S23_trimmed.fastq.gz)

[7E_S23_Trim2](7E_S23_trimmed1.fastq.gz)

3. Run RNASpades to create a de novo assembly 

[RNA Spades sh](project_RNASpades_assembly.sh)

[RNA Spades sbatch](project_RNASpades_assembly.sbatch)

- [assembly FASTA file](transcripts.fasta)


4. Use diamond to annotate assembly with vision genes from NCBI 

[Vision genes from NCBI](invertopsins.fasta)

[Make diamond database file sh](diamond_mkdb.sh)

[Make diamond database file sbatch](diamond_mkdb.sbatch)

[annotation sh](annotation_file.sh)

[annotation sbatch](annotation_file.sbatch)

[annotation results](annotation_results.blast)


5. Use kallisto to quantify and pseudoalign/align untrimmed reads via an array


To do this I used these files and changed the input files to represent the alignment to the de novo
assembly OR the alignment to the refrence transcriptome:

[kallisto quant sh](kallisto_quant.sh)

[kallisto quant sbatch](kallisto_quant.sbatch)

[kallisto args](kallisto_quant.args)

[Annotation with augustus sh](run_augustus_annotation.sh)

[Annotation with augustus sbatch](run_augustus_annotation.sbatch)


- Files specific to aligning to the de novo assembly

[kalisto ID sh](kallisto_id_de_novo.sh)

[kallisto ID sbatch](kallisto_id_de_novo.sbatch)


- Files specific to aligning to reference transcriptome of P. japonicus


[kallisto ID sh](kallisto_ID_reference_transcriptome.sh)

[kallisto ID sbatch](kallisto_ID_reference_transcriptome.sbatch)


- Resulting files

[de novo TTC result](TTC_headers_denovo.txt)


[reference TTC result](TTC_headers_PJ.txt)


6. Use R Studio packages pheatmap, sleuth, dev tools, and EnhancedVolcano to create heat maps
for DEG analyses 

[DEG R script](DEGAnalysis.R)


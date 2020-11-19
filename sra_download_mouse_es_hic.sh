module load g/sratoolkit/2.9.6-1

cat /gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/SRR_Acc_List.txt | xargs fastq-dump --outdir /gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/fastq --split-files

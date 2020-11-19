module load g/samtools/1.10

#Pairtools and numpy should already be installed using Anaconda
BAM_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/paired_aln
CHROM_SIZES=/gpfs/gpfs2/home/mbetti/4dn_pipeline/reference/mm10/chrom_sizes/mm10.chrom.sizes

#rep 1 bams
BAM_SAMN09076491=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076491.bam
BAM_SAMN09076489=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076489.bam
BAM_SAMN09076488=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076488.bam
BAM_SAMN09076487=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076487.bam
BAM_SAMN09076486=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076486.bam
BAM_SAMN09076485=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076485.bam

#rep 2 bams
BAM_SAMN09076484=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076484.bam
BAM_SAMN09076483=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076483.bam
BAM_SAMN09076482=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076482.bam
BAM_SAMN09076481=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076481.bam
BAM_SAMN09076480=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076480.bam
BAM_SAMN09076479=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076479.bam
BAM_SAMN09076477=$BAM_DIR\/mouse_es_mm10_hic_SAMN09076477.bam

#Process each bam as a pairsam, sort of, and and output into new pairsam directory
PAIRSAM_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/pairsam
mkdir $PAIRSAM_DIR

    #rep 1
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076491 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076491.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076489 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076489.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076488 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076488.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076487 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076487.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076486 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076486.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076485 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076485.sorted.pairsam

    #rep 2
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076484 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076484.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076483 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076483.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076482 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076482.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076481 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076481.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076480 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076480.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076479 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076479.sorted.pairsam
pairtools parse --chroms-path $CHROM_SIZES $BAM_SAMN09076477 | pairtools sort > $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076477.sorted.pairsam

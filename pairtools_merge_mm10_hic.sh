module load g/samtools/1.10

#Process each bam as a pairsam, sort of, and and output into new pairsam directory
PAIRSAM_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/pairsam

#Merge the pairs files for into a single pairs file for each rep, mark duplicate alignments, and output the reads with pairtools classification UU and UC to a pairs file
PAIRS_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/pairs
mkdir $PAIRS_DIR

#Create a temporary directory for intermediates
TMP_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/tmp_dir

    #rep 1
pairtools merge --tmpdir $TMP_DIR --memory 400 --nproc 64 $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076491.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076489.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076488.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076487.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076486.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076485.sorted.pairsam | pairtools dedup --mark-dups --nproc-in 64 --nproc-out 64 | pairtools select '(pair_type=="UU") or (pair_type=="UR") or (pair_type=="RU")' | bgzip > $PAIRS_DIR\/mouse_es_mm10_hic_r1.sorted.merged.dedup.selected.pairs.gz

    #rep 2
pairtools merge --tmpdir $TMP_DIR --memory 400 --nproc 64 $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076484.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076483.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076482.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076481.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076480.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076479.sorted.pairsam $PAIRSAM_DIR\/mouse_es_mm10_hic_SAMN09076477.sorted.pairsam | pairtools dedup --mark-dups --nproc-in 64 --nproc-out 64 | pairtools select '(pair_type=="UU") or (pair_type=="UR") or (pair_type=="RU")' | bgzip > $PAIRS_DIR\/mouse_es_mm10_hic_r2.sorted.merged.dedup.selected.pairs.gz

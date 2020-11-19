ANNO_MERGED_PAIRS=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/anno_merged_pairs/mouse_es_mm10.frag_anno.pairs
REST_FRAG=/gpfs/gpfs2/home/mbetti/juicer/restriction_sites/mm10_MboI.txt
OUT_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/hic_matrix
mkdir $OUT_DIR

#Use juicertools pre to convert the .pairs file to a .hic matrix
java -Xmx400g -jar /gpfs/gpfs2/home/mbetti/bin/juicer_tools_1.19.02.jar pre -f $REST_FRAG $ANNO_MERGED_PAIRS $OUT_DIR\/mouse_es_mm10.hic mm10

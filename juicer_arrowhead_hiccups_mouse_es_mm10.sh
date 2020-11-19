HIC_MATRIX=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/hic_matrix/mouse_es_mm10_uu_ur_ru.hic
OUT_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/downstream
mkdir $OUT_DIR

#Use juicertools arrowhead to find the contact domains within the .hic matrix
java -jar /gpfs/gpfs2/home/mbetti/bin/juicer_tools_1.19.02.jar arrowhead $HIC_MATRIX $OUT_DIR\/mouse_es_mm10_uu_ur_ru_contact_domains_list

#Use juicertools hiccups to find chromatin loops within the .hic matrix
java -jar /gpfs/gpfs2/home/mbetti/bin/juicer_tools_1.19.02.jar hiccups $HIC_MATRIX $OUT_DIR

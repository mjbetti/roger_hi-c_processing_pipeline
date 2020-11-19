#Declare the paths of the processed pairs files
PAIRS_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/pairs
PAIR1=$PAIRS_DIR\/mouse_es_mm10_hic_r1.sorted.merged.dedup.selected.pairs.gz
PAIR2=$PAIRS_DIR\/mouse_es_mm10_hic_r2.sorted.merged.dedup.selected.pairs.gz

MERGED_PAIRS_OUT_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/merged_pairs
mkdir $MERGED_PAIRS_OUT_DIR

#Merge the two pairs files using the merge-pairs.sh script from pairix. This portion of the script is easiest run interactively in the output directory. The input .pairs files should already have been compressed with bgzip.
/gpfs/gpfs2/home/mbetti/pairix/util/merge-pairs.sh mouse_mm10_merged $PAIR1 $PAIR2

#Use the generate_site_positions.py script from the juicertools repo to generate a restriction site file containing the coordinates by chromosome of the specific restriction enzyme used in the experiment. Genomes do not come pre-loaded into the script, so you will need to download your own reference FASTA and add it to the list of genomes in the script dictionary called "filenames"
python /gpfs/gpfs2/home/mbetti/juicer/misc/generate_site_positions.py MboI mm10 > /gpfs/gpfs2/home/mbetti/juicer/restriction_sites/mm10_MboI.txt

#Use the fragment_4dnpairs.pl script from the pairix repo to annotate the merged .pairs file with the MboI restriction sites generated in the previous script
ANNO_MERGED_PAIRS_OUT_DIR=/gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/anno_merged_pairs
mkdir $ANNO_MERGED_PAIRS_OUT_DIR

gunzip -c /gpfs/gpfs2/home/mbetti/4dn_pipeline/mouse_es_mm10/merged_pairs/mouse_mm10_merged.pairs.gz | /gpfs/gpfs2/home/mbetti/pairix/util/fragment_4dnpairs.pl - mouse_es_mm10.frag_anno.pairs /gpfs/gpfs2/home/mbetti/juicer/restriction_sites/mm10_MboI.txt

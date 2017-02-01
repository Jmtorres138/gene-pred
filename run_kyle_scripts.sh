
echo 1 - Run Semantic Mapping
#perl stig --q res/T2D.query.manual.txt --db data/gene-db/ --o output_file1

echo 2 - Map Semantic Output to Genes at T2D Loci
#perl map.semantic res/T2D-loci.all.genes2 output_file1 > output_file1-2

echo 3 - Run Association Data Prediction
#perl run.pred --i data/T2D.loci --a data/T2D-loci.out.gz --o output_file2 --cds data/T2D-loci.CDS --dhs data/T2D-loci.DHS --dist data/T2D-loci.dist-50kb

echo 4 - Format Prediction Output
#perl frmt.pred output_file2 > output_file2-2

echo 5 - Merge Results
perl merge output_file1-2 output_file2-2 > merged.output

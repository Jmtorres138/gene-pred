gene-pred
gene prediction scripts and data

# gene annotation mapping

stig
runs semantic mapping
requires: Perl PDL library, Lingua::Stem; R packages lsa and SnowballC
<<<<<<< HEAD
run: ./stig --q res/T2D.query.manual.txt --db data/gene-db/ --o output_file1
=======
run: ./stig --q data/T2D.query.manual.txt --db data/gene-db/ --o output_file1
>>>>>>> 229017f2d0c426c9a7571e8db095e2de88c5e569
--q, query .txt file
--db, database of gene annotation files
--o, output

map.semantic
maps semantic output to genes at T2D loci
<<<<<<< HEAD
run: ./map.semantic res/T2D-loci.all.genes2 output_file1 > output_file1-2
=======
run: ./map.semantic data/T2D-loci.all.genes output_file1 > output_file1-2
>>>>>>> 229017f2d0c426c9a7571e8db095e2de88c5e569

# diabetes association mapping

run.pred
runs association data prediction 
run: ./run.pred --i data/T2D.loci --a data/T2D-loci.out.gz --o output_file2 --cds data/T2D-loci.CDS --dhs data/T2D-loci.DHS.vcf --dist data/T2D-loci.dist-50kb
--i, list of loci to run
--a, file of variant association data at each locus
--o, output
--cds, file of coding annotations
--dhs, file of DHS annotations
--dist, file of distance annotations

frmt.pred - format prediction output
fun: ./frmt.pred output_file2 > output_file2-2

# merge results
merge
run: ./merge output_file1-2 output_file2-2 > merged.output
<<<<<<< HEAD

# resources
Resource package can be found here
https://www.dropbox.com/sh/d1z9ota2uw807to/AADbJ_suBCDL7xXxbRzVnbCva?dl=0
=======
>>>>>>> 229017f2d0c426c9a7571e8db095e2de88c5e569

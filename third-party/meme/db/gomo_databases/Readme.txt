This file describes the data required by GOMO and AMA.

Data sets for GOMO are defined by three different files per species:

1) a sequence file in fasta format having suffix ".na".
   for example: mouse.na
2) a gene ontology2sequence file that maps to each GO term the 
   set of sequences that are annotated by this term. The sequence ids
   should be the same that are used in file 1)
   The file should be in tabulator separated format and have the exact
   same name as file 1) but with an additional suffix ".csv"
   for example: mouse.na.csv
   #GO:id	GO description	Sequence ids (separated by tabulators as well)
   e.g.
   GO:0005712	cellular_component: chiasma	MGI:1353455	MGI:1353456
3) a background frequencies file providing the frequencies of the species. 
   The file should extend the name of file 1) by suffix ".bfile"
   for example: mouse.na.bfile
   This file can be made using the command:
	fasta-get-markov -norc < mouse.na > mouse.na.bfile
   
The first file is used by AMA. All sequences are scanned with the 
queried motif. The resulting cisml file holds the score for each and
every sequence This file together with the second file (2) specifies
the input for GOMO. 

It is possible to use different scoring algorithms too (other than AMA). 
However, GOMO requires a file in cisml format where a score is assiged
to all sequences. The sequence ids of the cisml file have to match the 
sequences ids in file (2).

- How to create a dataset for a new species?

First, the species need to be annotated with GO terms. Check out 
http://www.geneontology.org/GO.current.annotations.shtml if the 
species of interest in annotated and download the corresponding 
annotation file. 

An annotation file usually contains one annotation per row. The columns
of interest are a sequence identifier and the GO id. Use all sequence
identifier contained in the annotation file to get the corresponding
sequences (e.g. via http://rsat.ulb.ac.be/rsat/ or http://www.biomart.org/)
in fasta format. This file is required for AMA (file 1).

Second, the GO2Sequence map must be created. Note, the mapping in the
annotation file corresponds to the most specific GO term only. GOMO
requires that the sequence id is assigned to all the parental GO terms
as well. Thus the transitive closure should be computed first using a Gene
ontology file http://www.geneontology.org/GO.downloads.ontology.shtml . 

Then, the map can be computed by simply assigning to each GO term in 
the annotation file, all sequence ids that are annotated by either the
term direct of any of its childs.

- Where to put the data sets on the website?

The data sets need to go into the MEME db/ directory and there in a subdirectory
"gomo_databases"

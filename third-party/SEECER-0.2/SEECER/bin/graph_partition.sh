
RANGE=$1
KMER=$2
SEQ=$3
TMPDIR=$4
GRAPHDIR=$TMPDIR/graph
mkdir GRAPHDIR

T=`awk 'BEGIN {max = 0; start = 0; end = 0; prev = 0} {if(max < $1 - prev) {max = $1 - prev; start = prev; end = $1} prev = $1} END{ print max " " start " " end " "}' $RANGE`
start=`echo $T | cut -f2 -d ' '`
end=`echo $T | cut -f3 -d ' '`
awk "NR > 2 * $start && NR <= 2 * $end {print}" $SEQ > $GRAPHDIR/sml_$SEQ
awk "NR > 2 * $start && NR <= 2 * $end {print}" $KMER > $GRAPHDIR/sml_$KMER
python graph_partition.py $GRAPHDIR/sml_$KMER $GRAPHDIR/bi.graph

#partition the graph
k=8
~/software/metis-5.0/build/Linux-x86_64/programs/gpmetis $GRAPHDIR/bi.graph $k
python seq_extract.py $TMPDIR/bi.graph.part.$k $TMPDIR/sml_$SEQ $TMPDIR/largeClust.fa $TMPDIR/largeClust_index

#merge into the same file


source config.sh
CASEREAD=$1
OUTDIR=$2
KLEN=$3

TMPDIR=$OUTDIR/tmp

rm -Rf $TMPDIR/
mkdir -p $TMPDIR/

VELVETH=$VELVET/velveth
VELVETG=$VELVET/velvetg


#$VELVETH k19 19 -short -fastq ../reads.fa
#$VELVETG k19 -cov_cutoff auto -amos_file yes

$VELVETH $TMPDIR $KLEN -short -fastq $CASEREAD
#$VELVETG $TMPDIR -cov_cutoff 2.5 -min_contig_lgth 100
$VELVETG $TMPDIR -cov_cutoff 1.5

#$VELVETH k11 11 -short -fastq ../reads.fa
#$VELVETG k11 -cov_cutoff auto -amos_file yes

awk 'BEGIN{i = 0;} /^>/ { if (i>0) printf("\n"); i++; printf("%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < $TMPDIR/contigs.fa > $OUTDIR/cdhit-contigs.fa

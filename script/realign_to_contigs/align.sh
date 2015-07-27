source config.sh
pwd

CONTIG=$1
CASEREAD=$2
CTRLREAD=$3
OUTDIR=$4
TMPDIR=$OUTDIR/tmp
rm -Rf $TMPDIR
mkdir -p $TMPDIR

# -m 5 is new
$RAZERS -m 5 -tc 8  -i 90 -o $TMPDIR/Ctrl_reads_contig_algn.sam $CONTIG $CTRLREAD
$RAZERS -m 5 -tc 8  -i 90 -o $TMPDIR/ChiP_reads_contig_algn.sam $CONTIG $CASEREAD

# Output the READ-CONTIG mapping files
awk 'BEGIN{OFS="\t";} {if ($1 !~ /@/) {print $1,$3} }' $TMPDIR/ChiP_reads_contig_algn.sam > $OUTDIR/ChiP_read_contig
awk 'BEGIN{OFS="\t";} {if ($1 !~ /@/) {print $1,$3} }' $TMPDIR/Ctrl_reads_contig_algn.sam > $OUTDIR/Ctrl_read_contig

rm -Rf $TMPDIR


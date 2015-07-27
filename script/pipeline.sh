source config.sh

CASEREAD=$1 #case reads
CTRLREAD=$2 #control reads
OUTDIR=$3 #directory for output
KLEN=$4 #length of kmer
REFDB=$5 #database for reference (use ":" to separate different databases)
PREFER=$6 #Use SEECER or velvet

#sequence assembly
if [ $PREFER == 1 ]
then
	echo "Using SEECER for ChIP-seq assembly"
	$BASEDIR/run_SEECER.sh $CASEREAD $OUTDIR $KLEN
else
	echo "Using velvet for ChIP-seq assembly"
	$BASEDIR/run_velvet.sh $CASEREAD $OUTDIR $KLEN
fi

#aligning short reads
$BASEDIR/realign_to_contigs/align.sh $OUTDIR/cdhit-contigs.fa $CASEREAD $CTRLREAD $OUTDIR

#select discriminative contigs
$BASEDIR/select_contigs/select_contigs.sh $OUTDIR/cdhit-contigs.fa $OUTDIR $REFDB $CASEREAD $CTRLREAD

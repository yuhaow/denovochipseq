source config.sh

CONTIG=$1
OUTDIR=$2
DBS=$3
CASEREAD=$4
CTRLREAD=$5

mkdir -p $OUTDIR/contigAnalysis
cd $OUTDIR

$BASEDIR/select_contigs/runPipelineContigPValues.sh  $OUTDIR $OUTDIR/contigAnalysis $CONTIG $BASEDIR/select_contigs $CASEREAD $CTRLREAD


for file in `ls -1 contigAnalysis/*.idlist`
do

	dn=`basename $file`
	dn=${dn%.idlist}
	dn=PARAM_$dn

	rm -R $dn  
	mkdir -p $dn
  
	python $BASEDIR/select_contigs/select_contigs_by_ids.py -i $file -o $dn/seqs.fa -r $CONTIG
	mv $file $dn

	pwd=`pwd`
	cd $dn;
	python $BASEDIR/motif/run_motif.py -i seqs.fa --meme $MEME/ --db $DBS
	cd $pwd;

done;

cd $BASEDIR

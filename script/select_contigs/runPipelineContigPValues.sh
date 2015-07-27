R=R

#BASEDIR=/home/hple/chipseq/data/mouse_chipseq/scripts/select_contigs/
#directory changed by yuhao

inFolder=$1/
newOutput=$2/
fasta=$3
BASEDIR=$4
CASEREAD=$5
CTRLREAD=$6

mkdir -p $newOutput

#first count unique alignments
perl $BASEDIR/getNormalizedContigCounts.pl $inFolder/ChiP_read_contig $newOutput/ContigsCountsChip.dat > $newOutput/LOGcontig
perl $BASEDIR/getNormalizedContigCounts.pl $inFolder/Ctrl_read_contig  $newOutput/ContigsCountsControl.dat > $newOutput/LOGcontrol

#get lengths of contigs - There may be other fa files, this is dangerous
#fasta=$(ls $inFolder/*.fa)
#

perl $BASEDIR/getLengthInFasta.pl $fasta > $newOutput/contigLengths.dat

#compute p-values
CHIPNUM=`wc -l $CASEREAD | awk '{print $1}'`
CTRLNUM=`wc -l $CTRLREAD | awk '{print $1}'`
$R --vanilla --args "$newOutput" $CHIPNUM $CTRLNUM < $BASEDIR/ComputePValuesContigsAutomatic.R

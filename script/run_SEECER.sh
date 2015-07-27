source config.sh
CASEREAD=$1
OUTDIR=$2
KLEN=$3

RDIR=$OUTDIR/tmp

rm -Rf $RDIR/
mkdir -p $RDIR/


###### this needs to be changed to location of SEECER
cd $SEECER_DIR


# -O to reorder reads
#CMD='./bin/run_seecer.sh -t $RDIR/ -s 3 -O -p "--failureTh=3 --eDelta 0.05 --entropy=1.0 --contigFn $PBS_O_WORKDIR/contigs --maxCorrections 3 --no-reuse-reads"  $PBS_O_WORKDIR/../all_reads.fastq'
mkdir -p $RDIR/debug
#CMD='./bin/run_seecer.sh -t $RDIR/ -s 1 -k 19 -p "--failureTh=3 --eDelta 0.05 --entropy=1.0 --contigFn $PBS_O_WORKDIR/contigs --maxCorrections 3 --no-reuse-reads -d $RDIR/debug" $PBS_O_WORKDIR/../ENCFF002ECMCN.fastq'
CMD='./bin/run_seecer.sh -t $RDIR/ -s 1 -k $KLEN -p "--failureTh=3 --eDelta 0.05 --entropy=1.0 --contigFn $OUTDIR/contigs --maxCorrections 3 --no-reuse-reads -d $RDIR/debug" $CASEREAD'
echo $CMD

set -um

pgid=$$
echo "PGID: $pgid"

# detect operating system and prepare measurement
case `uname` in
    Darwin|*BSD) sizes() { /bin/ps -o rss= -g $1; } ;;
    Linux) sizes() { /bin/ps -o rss= -$1; } ;;
    *) echo "`uname`: unsupported operating system" >&2; exit 2 ;;
esac

list_all() {
c=
for child in $(ps -o pid,ppid ax  | awk "{ if ( \$2 == $1 ) { print \$1 }}"); 
do 
  c="$c `sizes $child`";
done

echo "$c";
}


# monitor the memory usage in the background.
(
# waiting for starting up
echo "WAITING FOR STARTING"
sleep 1;
peak=0
sizes=`list_all $pgid`
while [ -n "$sizes" ]
do
set -- $sizes
    sample=$((${@/#/+}))
    let peak="sample > peak ? sample : peak"
    echo "memusg: peak=$peak" > $OUTDIR/memperf
    sleep 1
    sizes=`list_all $pgid`
done
echo "MONITORING DONE"
) &
monpid=$!

# run the given command
eval $CMD

cd $OUTDIR
python $BASEDIR/analyze_contigs.py -i contigs  -o contigs.fa

$CDHIT -i contigs.fa -o cdhit-contigs.fa

cd $BASEDIR

###

rm -rf $RDIR

date

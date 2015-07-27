#/usr1/SEECER/chipSeq/data/GSM288356_c-Myc
#
#
#/usr1/SEECER/chipSeq/data/GSM288356_c-Myc
#format
#SRR0076324D.2	348934
#SRR002039.14    2014072
use warnings;

#will store the number of alignments of a read to any of the contigs
%readAlignments=();
	
#will store the number of normalized read counts of the contig
%contigAlignments=();

#will store the allowed contigs
%allowedContigs = ();


$file=shift;

$fileAllow=shift;

$file2=shift;

if(!defined($file2) || !defined($file) || !defined($fileAllow)){
	die "input and/or output and/or allowedContigs file are missing\n";
}

open(FILE,"<$fileAllow") or die "cannot open file $fileAllow";
$count=0;
while(<FILE>){
	chomp($_);
	$allowedContigs{$_}=1;
}

close(FILE);
print "Read in the allowd Contigs\n";
open(FILE,"<$file") or die "cannot open file $file";
$count=0;
while(<FILE>){
	if($_ !~ /@/){
	if($count % 10000000 == 0){
	print "$count \n";
	}
	chomp($_);
	@line=split(/\t/,$_);
	if(exists($allowedContigs{$line[1]})){
	$readid=(split(/\t/,$_))[0];
	#print $readid."\n";
	if(exists($readAlignments{$readid})){
		$readAlignments{$readid}++;
	}else{
		$readAlignments{$readid}=1;
	}
	}
	$count++;
	}
}
close(FILE);

#open file again to count contig matches this time
print "\nFinished counting read multi-alignments\n";
print "Number of reads aligned:" . keys( %readAlignments ) . ".\n";

open(FILE,"<$file") or die "cannot open file $file";
$count=0;
while(<FILE>){
	if($_ !~ /@/){
	if($count % 10000000 == 0){
        print "$count \n";
        }
	$count++;
	chomp($_);
	@line=split(/\t/,$_);
        if(exists($allowedContigs{$line[1]})){
	$readid=(split(/\t/,$_))[0];
	if(exists($contigAlignments{$line[1]})){
                $contigAlignments{$line[1]}+= 1/$readAlignments{$readid};
        }else{
                $contigAlignments{$line[1]}=1/$readAlignments{$readid};
        }
	}
}
}

close(FILE);


open(OUT,">$file2") or die "cannot open $file2 with write access\n";
foreach my $key ( keys %contigAlignments )
{
  print OUT"$key\t$contigAlignments{$key}\n";
}


close(OUT);

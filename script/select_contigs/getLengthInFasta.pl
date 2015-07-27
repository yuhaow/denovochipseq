use warnings;
#my $file = shift;
$file = shift; ####debug by yuhao
my $id="Peterhatnochgarnichts";
my $seq =0;
my $len = 0;
open(FILE,"<$file") or die "cannot open $file";
while(<FILE>){
        if($_ =~ /^>/){
                        if( $id ne "Peterhatnochgarnichts"){
                             print $id."\t".$len."\n";
                        }
		
		$id=$_;
		chomp($id);
		$id =~ s/^>//;	
		$len=0;
		$seq="";
		}else{ #sequence line
			$seq = $seq.$_;
			chomp($_);
			$len=$len +length($_);
}



}
#print last line
print $id."\t".$len."\n";

close(FILE);
#

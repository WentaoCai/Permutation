#!/usr/bin/perl
$len=0;
open (T1,"$ARGV[0]");
        while($line=<T1>){
        chomp $line;
        @A =split (/\s+/ ,$line);
$len=$len+$A[1];
$standrad{$A[0]}=$len;
        }
#print $len."\n";
$standrad{'0'} =0;

open (T2,"$ARGV[1]");
        while(<T2>){
        chomp;
        @B =split (/\s+/ ,$_);
#    push (@within_snps, $B[3]);
$pos{$B[3]}=$standrad{$B[0]-1}+$B[1];
#print $standrad{$B[0]-1}+$B[1]."\n";              

#  if(exists $standrad{$B[1]}){
               # print $standrad{$B[1]}."\t".$B[1]."\t0\t".$standrad1{$B[1]}."\t$B[4]\t$B[5]\n";
                                }

    my $num=int(rand($len))+1;

 my @new_rank;
  

foreach $key (keys %pos) {
	   if($pos{$key}<=$len-$num){
            $pos{$key} = $pos{$key}+$num;
        }else{
            $pos{$key}=$pos{$key} + $num-$len;
        }
   #	if($lne)
 	
foreach my $key2 ( sort { $standrad{$b} <=> $standrad{$a} } keys %standrad ) {
	if($pos{$key}>$standrad{$key2}){
	print "$key\t";
	print "$linshi\t";
	print $pos{$key}-$standrad{$key2}."\n";
last;
}
else{
$linshi=$key2;
}
}
}



# print "$key  == > $standrad{$key}"."\n";}

     #do something with ($key, $value)
     #
     #}


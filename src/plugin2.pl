#Refered to http://perldoc.perl.org/ for assistance
#!usr/bin/perl
use Modern::Perl;
use Data::Dumper;
use File::Find::Rule;

my $mvnTest = 'mvn dependency:tree -DoutputType="tgf" -Doutput="mvn.txt"';
my $dos = 'dosocs2 oneshot ';
my $depnd = 'dosocs2 dependencies';

system($mvnTest);

my $mTxt = "mvn.txt";
open (FH, "< $mTxt") or die "Can't open file: $!";
my @lines;
while (<FH>){
        push (@lines, $_);
}
close FH or die;


#print .jar files
foreach my $i (@lines){
        my $x =$depnd.$i;

        system($x)
}


my @files = File::Find::Rule->file
                            ->name("*.jar")
                            ->in("/usr/share/maven-repo");
#print .jar files
foreach my $i (@files){
        my $x =$dos.$i;

        system($x)
}





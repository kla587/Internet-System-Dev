#!usr/bin/perl
use Modern::Perl;
use Data::Dumper;
use File::Find::Rule;

my $mvnTest = 'mvn dependency:tree -DoutputType="tgf" -Doutput="mvn.txt"';
my $dos = 'dosocs2 oneshot ';

system($mvnTest);

my $mTxt = "mvn.txt";
open (FH, "< $mTxt") or die "Can't open file: $!";
my @lines;
while (<FH>){
	push (@lines, $_);
}
close FH or die;

#foreach my $i (@lines){
#	INSERT INTO relationships (relationship_id, left_identifier_id, right_identifier_id, relationship_type_id, relationship_comment)
#	VALUES($i, 0,0,0, Prereq_For);

#}



#foreach my $i (@lines){
#	if($i =~ m/[^ ]\+\-\s+(\S+)/g){
#		my $y = $1;
#		print $y;
#	}
	

#	elsif($i =~ m/[^ ]\|\s\s\\\-\s(\S+)/) {
		
#		print $1;
#	}

#	elsif($i =~ m/[^ ]\|\s\s\|\s+.*?\s(\S+)/){
#		print $1;
#	}

#}

#Working
my @files = File::Find::Rule->file
			    ->name("*.jar")
			    ->in("/usr/share/maven-repo");
#print .jar files
foreach my $i (@files){
	my $x =$dos.$i;

	system($x)
}







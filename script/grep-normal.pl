#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

$word = $ARGV[0];
$file = $ARGV[1];

open(FILE,"$file");
while(<FILE>)
{
	if ( index($_,$word) != -1 )
	{
  		print $_;
	}
	
}
close(FILE);

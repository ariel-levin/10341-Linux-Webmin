#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

$file = $ARGV[0];

unless (-e $file) {
	print "Could not open file '$file'";
}

open(FILE,"$file") or die "Could not open file '$file' $!";
while(<FILE>)
{
  	print $_;
}
close(FILE);

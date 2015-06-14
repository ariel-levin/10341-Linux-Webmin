#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

$file = $ARGV[0];

$counter = 0;

open(FILE,"$file");
while(<FILE>)
{
	$counter++;
}
close(FILE);

print "$counter $file\n";

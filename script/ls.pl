#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $dirname = <FILE>);
close FILE;

if (@ARGV) {
	$dirname = $ARGV[0];
}

opendir (DIR, $dirname) or die "Can't open $dirname: $!";;

@files = sort { lc($a) cmp lc($b) } readdir(DIR);
$i = 0;
for (@files)
{
	$first = substr($files[$i], 0, 1);
	if ($first ne ".")
	{
		print "$files[$i] ";
	}
	$i++;
}

closedir DIR;

print "\n";

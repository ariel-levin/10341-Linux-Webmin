#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

$rand = ".8n0K9763sDwxjtMWnoJN";
open my $FILE,'>',$rand;
$path = `readlink -f $rand`;
$path = reverse $path;
$path = substr $path, 22;
$path = reverse $path;
print "$path\n";
close(FILE);
unlink $rand;

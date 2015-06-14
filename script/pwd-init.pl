#!/usr/bin/perl

$rand = ".8n0K9763sDwxjtMWnoJN";
open my $FILE,'>',$rand;
$path = `readlink -f $rand`;
$path = reverse $path;
$path = substr $path, 22;
$path = reverse $path;
print "$path\n";
close(FILE);
unlink $rand;

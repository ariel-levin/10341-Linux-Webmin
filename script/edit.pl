#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

if ( @ARGV != 2 ) {
	print("Incorrect Inuput..\n");
	exit 1;
}

$file = $ARGV[0];
$str = $ARGV[1];

if ((! -e $file) || (! -f $file)) {
	print("The file entered is not an available file\n");
	exit 1;
}

if (index($file, "/") != -1) {
	print("Error: you can edit files only in the current folder,\n");
	print("Please enter only the file name\n");
	exit 1;
} 

my @lines = split(/<br \/>/, $str);

open(FILEW,">$file");
for (@lines) {
	print FILEW ($_ , "\n");
}
close(FILEW);

print("File '$file' successfully edited\n");

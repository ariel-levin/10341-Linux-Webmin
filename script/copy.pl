#!/usr/bin/perl

open FILE, "/var/www/html/script/current-path" or die "Could not read file, program halting.";
chomp(my $path = <FILE>);
close FILE;
chdir($path) or die "$!";

if ( @ARGV != 2 ) {
	print("Incorrect Inuput..\n");
	exit 1;
}

$src = $ARGV[0];
$dest = $ARGV[1];

if ((! -e $src) || (! -f $src)) {
	print("The source entered is not an available file\n");
	exit 1;
}

if (index($src, "/") != -1) {
	print("Error: you can move files only from the current folder,\n");
	print("Please enter only the file name\n");
	exit 1;
} 

if (! -d $dest) {
	print("Error: destination is not an available folder..\n");
	exit 1;
}

open(FILE,"$src");
open(FILEW,">$dest/$src");
while(<FILE>)
{
	print FILEW $_;		
}
close(FILE);
close(FILEW);

print("File '$src' successfully copied to '$dest'\n");

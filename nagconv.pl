#!/usr/bin/perl -w

use Getopt::Std;
use utf8;
binmode(STDOUT, ":utf8");
binmode STDIN;

my $usage;
{
$usage = <<"_USAGE_";

Examples:

  recode_coptic.pl shenoute.txt > shenoute_utf8.txt

This is made by So Miyagawa, based on recode_coptic.pl

Information of recode_coptic.pl:
	Copyright 2013-2015, Amir Zeldes, Caroline T. Schroeder 


_USAGE_
}

### OPTIONS BEGIN ###
%opts = ();
getopts('hf:',\%opts) or die $usage;

#help
if ($opts{h} || (@ARGV == 0)) {
    print $usage;
    exit;
}
open FILE,"<:encoding(UTF-8)",shift or die "could not find input document";
while (<FILE>) {

    chomp;
    $line = $_;
	$line =~ s/A/︦/g;
	$line =~ s/B/ⲛ̇/g;
	$line =~ s/C/ϧ/g;
	$line =~ s/D/ⲫ/g;
	$line =~ s/E/⟧/g;
	$line =~ s/F/ⲫ/g;
	$line =~ s/G/G/g;
	$line =~ s/H/H/g;
	$line =~ s/I/ⲓ̈/g;
	$line =~ s/J/`/g;
	$line =~ s/K/ⲝ/g;
	$line =~ s/L/ⲗ,/g;
	$line =~ s/M/⸌ⲛ/g;
	$line =~ s/N/ⲛ̄/g;
	$line =~ s/O/̣/g;
	$line =~ s/P/ⲯ/g;
	$line =~ s/Q/q/g;
	$line =~ s/R/ⳁ/g;
	$line =~ s/S/ⲋ/g;
	$line =~ s/T/ϯ/g;
	$line =~ s/U/ⲩ/g;
	$line =~ s/Ú/̈/g;
	$line =~ s/V/V/g;
	$line =~ s/W/⟦/g;
	$line =~ s/X/·/g;
	$line =~ s/Y/./g;
	$line =~ s/Z/·/g;
	$line =~ s/a/ⲁ/g;
	$line =~ s/b/ⲃ/g;
	$line =~ s/c/ϭ/g;
	$line =~ s/d/ⲇ/g;
	$line =~ s/e/ⲉ/g;
	$line =~ s/f/ϥ/g;
	$line =~ s/g/ⲅ/g;
	$line =~ s/h/ϩ/g;
	$line =~ s/i/ⲓ/g;
	$line =~ s/j/ϫ/g;
	$line =~ s/k/ⲕ/g;
	$line =~ s/l/ⲗ/g;
	$line =~ s/m/ⲙ/g;
	$line =~ s/n/ⲛ/g;
	$line =~ s/o/ⲟ/g;
	$line =~ s/p/ⲡ/g;
	$line =~ s/q/ϣ/g;
	$line =~ s/r/ⲣ/g;
	$line =~ s/s/ⲥ/g;
	$line =~ s/t/ⲧ/g;
	$line =~ s/u/ⲩ/g;
	$line =~ s/v/ⲑ/g;
	$line =~ s/w/ⲱ/g;
	$line =~ s/x/ⲭ/g;
	$line =~ s/y/ⲏ/g;
	$line =~ s/z/ⲍ/g;
	$line =~ s/=/̄/g;
	$line =~ s/≥/·/g;
	$line =~ s/ﬂ/ϥⲗ/g;
	$line =~ s/\+/︦/g;

	print $line ."\n";
}

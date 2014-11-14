#!/usr/bin/perl -w

# recode_coptic.pl Version 1.0.0

# this assumes a UTF-8 file in one word per line format and 
# automatically converts Coptic encodings
# usage:
# recode_coptic.pl file
# See help (-h) for options

use Getopt::Std;
use utf8;
binmode(STDOUT, ":utf8");
binmode STDIN;

my $usage;
{
$usage = <<"_USAGE_";
This script converts characters from one Coptic encoding to another.

Notes and assumptions:
- Supralinear strokes in Coptic font are supported
- Other decorations not yet supported

Usage:  recode_coptic.pl [options] <FILE>

Options and argument:

-h              print this message and quit
-f <format>     Specify the input format. Default is Coptic font, other options are "CMCL", "avva_shenouda", "low" (converts all upper case utf8 Coptic to all lower case)

<FILE>    A text file with Coptic text in a supported encoding

Examples:

Read a file in Coptic font encoding and output standard Unicode as UTF-8:
  recode_coptic.pl in_Coptic.txt > out_utf8.txt

Read a file in CMCL encoding and output standard Unicode as UTF-8:
  recode_coptic.pl -i CMCL in_Coptic.txt > out_utf8.txt

  
Copyright 2013-2014, Amir Zeldes

This program is free software. You may copy or redistribute it under
the same terms as Perl itself.
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

#format
if (!($format = $opts{f})) 
    {$format = "Coptic";}
elsif($format eq "CMCL") 
	{$format="CMCL";}
elsif($format eq "low") 
	{$format="low";}
elsif($format eq "avva_shenouda") 
	{$format="avva_shenouda";}
else {$format = "Coptic"}
### OPTIONS END ###

open FILE,"<:encoding(UTF-8)",shift or die "could not find input document";

while (<FILE>) {

    chomp;
    $line = $_;

	if ($format eq "Coptic")
	{
	#consonants (Replace various consonants and digraphs with IPA symbols)
	$line =~ s/a/ⲁ/g;
	$line =~ s/b/ⲃ/g;
	$line =~ s/c/ⲑ/g;
	$line =~ s/d/ⲇ/g;
	$line =~ s/e/ⲉ/g;
	$line =~ s/f/ϥ/g;
	$line =~ s/g/ⲅ/g;
	$line =~ s/h/ⲏ/g;
	$line =~ s/i/ⲓ/g;
	$line =~ s/j/ϫ/g;
	$line =~ s/k/ⲕ/g;
	$line =~ s/l/ⲗ/g;
	$line =~ s/m/ⲙ/g;
	$line =~ s/n/ⲛ/g;
	$line =~ s/o/ⲟ/g;
	$line =~ s/p/ⲡ/g;
	$line =~ s/q/ϭ/g;
	$line =~ s/r/ⲣ/g;
	$line =~ s/s/ⲥ/g;
	$line =~ s/t/ⲧ/g;
	$line =~ s/u/ⲩ/g;
	$line =~ s/v/ⲫ/g;
	$line =~ s/w/ⲱ/g;
	$line =~ s/x/ϩ/g;
	$line =~ s/y/ⲭ/g;
	$line =~ s/z/ⲍ/g;
	$line =~ s/¥/ϣ/g;
	$line =~ s/\+/ϯ/g;

	#NB psi and xi in Coptic font are 2, 3
	#these numbers will be replaced
	$line =~ s/2/ⲯ/g;
	$line =~ s/3/ⲝ/g;

	#capitals express supralinear stroke in Coptic font
	$line =~ s/A/ⲁ̅/g;
	$line =~ s/B/ⲃ̅/g;
	$line =~ s/C/ⲑ̅/g;
	$line =~ s/D/ⲇ̅/g;
	$line =~ s/E/ⲉ̅/g;
	$line =~ s/F/ϥ̅/g;
	$line =~ s/G/ⲅ̅/g;
	$line =~ s/H/ⲏ̅/g;
	$line =~ s/I/ⲓ̅/g;
	$line =~ s/J/ϫ̅/g;
	$line =~ s/K/ⲕ̅/g;
	$line =~ s/L/ⲗ̅/g;
	$line =~ s/M/ⲙ̅/g;
	$line =~ s/N/ⲛ̅/g;
	$line =~ s/O/ⲟ̅/g;
	$line =~ s/P/ⲡ̅/g;
	$line =~ s/Q/ϭ̅/g;
	$line =~ s/R/ⲣ̅/g;
	$line =~ s/S/ⲥ̅/g;
	$line =~ s/T/ⲧ̅/g;
	$line =~ s/U/ⲩ̅/g;
	$line =~ s/V/ⲫ̅/g;
	$line =~ s/W/ⲱ̅/g;
	$line =~ s/X/ϩ̅/g;
	$line =~ s/Y/ⲭ̅/g;
	$line =~ s/Z/ⲍ̅/g;
	#$line =~ s/¥/ϣ̅/g;
	#$line =~ s/\+/ϯ̅/g;
	}
	elsif ($format eq "CMCL")
	{
	$line =~ s/a/ⲁ/g;
	$line =~ s/b/ⲃ/g;
	$line =~ s/q/ⲑ/g;
	$line =~ s/d/ⲇ/g;
	$line =~ s/e/ⲉ/g;
	$line =~ s/f/ϥ/g;
	$line =~ s/g/ⲅ/g;
	$line =~ s/H/ⲏ/g;
	$line =~ s/i/ⲓ/g;
	$line =~ s/j/ϫ/g;
	$line =~ s/k/ⲕ/g;
	$line =~ s/l/ⲗ/g;
	$line =~ s/m/ⲙ/g;
	$line =~ s/n/ⲛ/g;
	$line =~ s/o/ⲟ/g;
	$line =~ s/p/ⲡ/g;
	$line =~ s/c/ϭ/g;
	$line =~ s/r/ⲣ/g;
	$line =~ s/s/ⲥ/g;
	$line =~ s/t/ⲧ/g;
	$line =~ s/u/ⲩ/g;
	$line =~ s/P/ⲫ/g;
	$line =~ s/w/ⲱ/g;
	$line =~ s/h/ϩ/g;
	$line =~ s/C/ⲭ/g;
	$line =~ s/z/ⲍ/g;
	$line =~ s/y/ϣ/g;
	$line =~ s/Y/ϯ/g;
	$line =~ s/T/ⲯ/g;
	$line =~ s/x/ⲝ/g;
	
	}
	elsif ($format eq "low")
	{
	$line =~ s/Ⲁ/ⲁ/g;
	$line =~ s/Ⲃ/ⲃ/g;
	$line =~ s/Ⲑ/ⲑ/g;
	$line =~ s/Ⲇ/ⲇ/g;
	$line =~ s/Ⲉ/ⲉ/g;
	$line =~ s/Ϥ/ϥ/g;
	$line =~ s/Ⲅ/ⲅ/g;
	$line =~ s/Ⲏ/ⲏ/g;
	$line =~ s/Ⲓ/ⲓ/g;
	$line =~ s/Ϫ/ϫ/g;
	$line =~ s/Ⲕ/ⲕ/g;
	$line =~ s/Ⲗ/ⲗ/g;
	$line =~ s/Ⲙ/ⲙ/g;
	$line =~ s/Ⲛ/ⲛ/g;
	$line =~ s/Ⲟ/ⲟ/g;
	$line =~ s/Ⲡ/ⲡ/g;
	$line =~ s/Ϭ/ϭ/g;
	$line =~ s/Ⲣ/ⲣ/g;
	$line =~ s/Ⲥ/ⲥ/g;
	$line =~ s/Ⲧ/ⲧ/g;
	$line =~ s/Ⲩ/ⲩ/g;
	$line =~ s/Ⲫ/ⲫ/g;
	$line =~ s/Ⲱ/ⲱ/g;
	$line =~ s/Ϩ/ϩ/g;
	$line =~ s/Ⲭ/ⲭ/g;
	$line =~ s/Ⲍ/ⲍ/g;
	$line =~ s/Ϣ/ϣ/g;
	$line =~ s/Ϯ/ϯ/g;
	$line =~ s/Ⲯ/ⲯ/g;
	$line =~ s/Ⲝ/ⲝ/g;
	
	}
	elsif ($format eq "avva_shenouda")
	{
	$line =~ s/=(.)/$1̄/g; #place supralinear stroke after character, not before as in avva shenouda
	$line =~ s/a/ⲁ/g;
	$line =~ s/b/ⲃ/g;
	$line =~ s/c/ⲥ/g; #c is sigma
	$line =~ s/d/ⲇ/g;
	$line =~ s/e/ⲉ/g;
	$line =~ s/f/ϥ/g;
	$line =~ s/g/ⲅ/g;
	$line =~ s/y/ⲏ/g; #y is eta
	$line =~ s/i/ⲓ/g;
	$line =~ s/j/ϫ/g;
	$line =~ s/k/ⲕ/g;
	$line =~ s/l/ⲗ/g;
	$line =~ s/m/ⲙ/g;
	$line =~ s/n/ⲛ/g;
	$line =~ s/o/ⲟ/g;
	$line =~ s/p/ⲡ/g;
	$line =~ s/\[/ϭ/g; #chima is an opening square bracket
	$line =~ s/r/ⲣ/g;
	$line =~ s/\;/ⲑ/g; #semi colon is theta
	$line =~ s/t/ⲧ/g;
	$line =~ s/u/ⲩ/g;
	$line =~ s/v/ⲫ/g;
	$line =~ s/w/ⲱ/g;
	$line =~ s/h/ϩ/g; #h is hori
	$line =~ s/y/ⲭ/g;
	$line =~ s/z/ⲍ/g;
	$line =~ s/s/ϣ/g; #s is shai
	$line =~ s/\]/ϯ/g; #right square bracket is ti
	$line =~ s/v/ⲯ/g;
	$line =~ s/x/ⲝ/g;

	}

	print $line ."\n";
}


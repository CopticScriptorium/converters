#process_dipl.pl
#version 1.0.0
#converts SCRIPTORIUM transcription format to CWB/TreeTagger SGML

#put the text on one long line
while ($line = <>) {

	$line =~ s/[\n\r]+//g;
	$strOneline .= "<line>" . $line ."</line>"; #add explicit line markup to all original lines, lines without tokens will be ignored later

}

#replace pipes and underscores with tags
$strOneline =~ s/"/%/g; #protect existing quotation marks

#protect underscores in attributes
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;
$strOneline =~ s/(=\%[^\%_]*)_([^\%]*\%)/\1\@\2/g;

$strOneline =~ s/(?!\|)_/|_/g; #add morph closure to every word if necessary

$strOneline =~ s/([^_]+)_/<word word="\1">\1<\/word>/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;

$strOneline =~ s/(\|)(?=[^"<>]*")//g;
$strOneline =~ s/%/"/g; #restore quotation marks

$strOneline =~ s/"/%/g; #protect existing quotation marks
$strOneline =~ s/([^\|]+)\|/<morph morph="\1">\1<\/morph>/g;

$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;
$strOneline =~ s/(=\"[^\"]*)(<[^>]+>)/\1/g;

$strOneline =~ s/%/"/g; #restore quotation marks
$strOneline =~ s/@/_/g; #restore underscores

#print $strOneline;
#exit;

#add linebreaks to SGML code
$strOneline =~ s/>/>%%%N%%%/g;
$strOneline =~ s/</%%%N%%%</g;
$strOneline =~ s/^%%%N%%%//g;
$strOneline =~ s/(%%%N%%%)+/\n/g;

print $strOneline;


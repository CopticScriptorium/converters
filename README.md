This repository holds character encoding converters to covert ASCII characters in legacy fonts into Unicode Coptic characters
________________________________________
Simple Perl Converter:
recode_coptic.pl Version 0.9.1

This assumes a UTF-8 file in one word per line format and automatically converts Coptic encodings

Usage:
recode_coptic.pl file
See help (-h) for options

Copyright 2013-14 Amir Zeldes, Caroline T. Schroeder. The perl program is free software. You may copy or redistribute the script under the same terms as Perl itself.
_________________________________________
About CopticVDWtoUTFConverter

The contents of the CopticVDWtoUTFConverter zip file will convert a file keyed in the ASCII Coptic font created by Dirk Van Damme and Gregor Wurst into Unicode UTF-8 encoding for Coptic (and for use with such fonts as Antinoou).

* * * * * * * 

Licensing

This software was created in 2012-13 by Eric E. Johnson in consultation with Stephen Emmel for the Coptic SCRIPtorIuM project directed by Caroline T. Schroeder and Amir Zeldes.  

Copyright 2013 by Eric E. Johnson

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
 
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details. 

See the GNU General Public License at <http://www.gnu.org/licenses/>.

* * * * * * * 

How To Use

These instructions assume some familiarity with the terminal and command line operations.

Before using, be sure your input file (ASCII Coptic file) is in LibreOffice format: .odt.  LibreOffice is a free download at http://www.libreoffice.org/download/

Unzip the files in this download.

Open the Terminal or command line interface, change to the the directory containing the unzipped files.  (Usually in the Terminal key in cd followed by the path, e.g.:  >cd /Users/yourname/CopticVDWtoUTFConverter )  For ease of use, put your input file into the directory with the converter.

To run the converter from the command line:

> python converter.py name_of_input_odf_file.odt name_of_output_markdown_file.md

... where you substitute the path to the appropriate input file for "name_of_input_odf_file.odt", and make up whatever you want for name_of_output_markdown_file.md (in "markdown" format). Note that the program does no checks for the existence of the target file so if you don't want to replace the destination file, choose a new file name.



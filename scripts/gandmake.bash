#!/bin/bash
### YOU SHOULD NOT HAVE TO ALTER THIS SCRIPT ###

## pdfmake: Build a PDF format worksheet

function die () {
	echo
	echo ---------------------------------------------
	echo "Failed to run '$1'. Either the input file is invalid"
	echo "or $1 is not installed on your system."
	echo
	exit 1
}

# Run sequence file to get all.tex . . .
./$1.seq

# . . . then reorganize the "all.tex" file into "output.tex" . . .
../scripts/gandwrap$2.bash $1

# . . . then convert "output.tex" to DVI format . . .

#if ! latex output.tex ; then die TeX ; fi

if ! pdflatex output.tex ; then die TeX ; fi

#if ! pdflatex output.tex ; then die TeX ; fi
# . . . then give the file a proper name . . .
#mv -vf output.dvi $1$2.dvi

# . . . then convert the file to PostScript format . . .
#if ! dvips -Ppdf -o ../output/$1$2.ps $1$2.dvi ; then die dvips ; fi

# . . . then convert the file to Adobe PDF format 
# (if this is not an "instructor" worksheet)!
#if [ "$2" != "_instructor" ] ; 
#  then if ! ps2pdf ../output/$1$2.ps ../output/$1$2.pdf ; 
#         then die ps2pdf ; 
#       fi ; 
#fi
#ps2pdf ../output/$1$2.ps ../output/$1$2.pdf

cp output.pdf ../output/$1$2.pdf
# After all that, remove temporary files, including all PostScript files 
# (unless this is producing an "instructor" version).
rm -vf all.*
rm -vf output.*
#if [ "$2" != "_instructor" ] ; then rm -vf ../output/$1.ps ; fi

rm -vf ../output/$1.ps
rm -vf ../output/$1$2.ps
# Note: this script differs from the one found in the
# Socratic Electronics project.  Here, only PostScript 
# files are produced for "instructor" worksheets.  
# Regular worksheets are produced in PDF format.



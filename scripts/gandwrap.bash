#!/bin/bash
### YOU SHOULD NOT HAVE TO ALTER THIS SCRIPT ###

## texwrap: Create a structurally correct TeX file called output.tex
## organized into "Question", "Answer", and "Notes" chapters.

OUTPUT=output.tex

# Start output with the fixed preamble file
cp preamble.tex $OUTPUT


# Add the introductory page to the output file
cat $1.tex >> $OUTPUT


# Extract and organize frontmatter from "all.tex" 
#echo "\vfil \eject" >> $OUTPUT
sed -f ../scripts/frontmatter.sed all.tex >> $OUTPUT


# Extract and organize questions from "all.tex" 
#echo "\vfil \eject" >> $OUTPUT
echo "\centerline{\bf Oppgaver}" >> $OUTPUT
echo "\vskip 5pt" >> $OUTPUT
sed -f ../scripts/oppgave.sed all.tex >> $OUTPUT


# Extract and organize answers from "all.tex" 
echo "\vfil \eject" >> $OUTPUT
echo "\centerline{\bf Svar}" >> $OUTPUT
echo "\vskip 5pt" >> $OUTPUT
sed -f ../scripts/svar.sed all.tex >> $OUTPUT
echo '\end{document}' >> $OUTPUT


# I have commented out the following section,
# so that normal worksheets are processed the
# same way that "short" worksheets would be
# processed.  This generates a worksheet w/o
# notes, but with a normal name:

# Extract and organize notes from "all.tex" 
#echo "\vfil \eject" >> $OUTPUT
#echo "\centerline{\bf Notes}" >> $OUTPUT
#echo "\vskip 5pt" >> $OUTPUT
#sed -f ../scripts/notes.sed all.tex >> $OUTPUT


# Add final \bye statement to $OUTPUT.tex


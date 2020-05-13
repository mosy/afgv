/^%(BEGIN_ANSWER)/,/^%(END_ANSWER)/d
/^%(BEGIN_NOTES)/,/^%(END_NOTES)/d
s/%(END_QUESTION)/\\vskip 10pt \\filbreak /g

# Delete all six-character filename reference lines and add vertical skip (whitespace)
s/\\underbar{file [0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z]}/\\vskip 50pt/g

# Delete all six-character filename reference lines and add horizontal rule 
# Note: this is useful when printing the CERTIFICATION EXAM, which is very long!
#s/\\underbar{file [0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z][0-9a-zA-Z]}/\\hrule/g




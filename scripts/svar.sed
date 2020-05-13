/^%(BEGIN_ANSWER)/,/^%(END_ANSWER)/!d
s/%(BEGIN_ANSWER)/\\svar{} /g
s/%(END_ANSWER)/\\vskip 10pt \\filbreak /g

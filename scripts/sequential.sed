s/%(BEGIN_FRONTMATTER)/ /g
s/%(END_FRONTMATTER)/\\vfil \\eject /g
s/%(BEGIN_QUESTION)/\\oppgave{} /g
s/%(END_QUESTION)/\\vskip 10pt \\filbreak /g
s/%(BEGIN_ANSWER)/\\svar{} /g
s/%(END_ANSWER)/\\vskip 10pt \\filbreak /g
s/%(BEGIN_NOTES)/\\notes{} /g
s/%(END_NOTES)/\\vfil \\eject /g
s/%INSTRUCTOR/ /g

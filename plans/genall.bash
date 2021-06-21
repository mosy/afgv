#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex ./planauntum.tex
pdflatex ./planspring.tex
pdfunite planauntum.pdf planspring.pdf temp.pdf
qpdf temp.pdf --pages . 2-3 -- 3AUA2122.pdf
cp 3AUA2122.pdf ../output/
rm *.pdf

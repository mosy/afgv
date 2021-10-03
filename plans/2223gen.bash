#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex 22auntum.tex
pdflatex 23spring.tex
pdfunite 22auntum.pdf 23spring.pdf temp.pdf
qpdf temp.pdf --pages . 2-3 -- 3AUA2223.pdf
cp 3AUA2223.pdf ../output/
rm *.pdf

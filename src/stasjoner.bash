#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex stasjon02.tex
pdflatex stasjon03.tex
pdflatex stasjon04.tex
pdflatex stasjon05.tex
pdflatex stasjon07.tex

cp *.pdf ../output/


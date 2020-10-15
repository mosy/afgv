#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex stasjon02.tex
cp stasjon02.pdf ../output/

pdflatex stasjon03.tex
cp stasjon03.pdf ../output/

pdflatex stasjon04.tex
cp stasjon04.pdf ../output/

pdflatex stasjon05.tex
cp stasjon05.pdf ../output/

pdflatex stasjon07.tex
cp stasjon07.pdf ../output/



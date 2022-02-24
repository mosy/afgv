#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex ./lStasjon01.tex
pdflatex ./lStasjon03.tex
pdflatex ./lStasjon04.tex
pdflatex ./lStasjon05.tex
pdflatex ./lStasjon11.tex
cp lStasjon*.pdf ../output/
rm lStasjon*.pdf
rm lStasjon*.out
rm lStasjon*.log
rm lStasjon*.aux

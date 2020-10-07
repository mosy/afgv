#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
pdflatex plan20.tex
pdflatex plan21.tex
pdflatex teori20.tex
pdflatex teori21.tex

cp *.pdf ../output/


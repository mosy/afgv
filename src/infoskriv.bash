#!/bin/bash


# "Concatenating" all selected questions/answers/notes into a single TeX file.
# This is where you specify the questions you want included in your worksheet, in the
# order you want them to appear.
rm -vf all.tex
touch all.tex
cat preamble.tex >> all.tex
#\title {Inforskriv for 3AUA Gand VGS} 
#\author {Fred-Olav Mosdal}
#\date {17.08.2020}
#\maketitle
cat infoskrivtittel.tex >> all.tex
cat hvordan.tex >> all.tex
cat forventninger.tex >> all.tex
#cat INST200syllabus.tex >> all.tex
#cat sequence.tex >> all.tex
cat tools.tex >> all.tex
#cat instructional.tex >> all.tex
#cat conversion_constants.tex >> all.tex
echo  '\end{document}' >> all.tex
pdflatex all.tex
cp all.pdf ../output/infoskriv.pdf


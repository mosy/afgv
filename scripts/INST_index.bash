#!/bin/bash


# This special script assembles and compiles a master schedule for all the
# Insrumentation (BTC) courses, INST200 through INST290.  It is a stand-
# alone script, not using any of the Makefiles or other scripts written
# for the Socratic Instrumentation project.

cat INST_index_prologue.tex > INST_index.tex
echo "\vfil \eject" >> INST_index.tex

cat sequence.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST200_sec1.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST205_sec1.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST206_sec1.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST230_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST230_sec2.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST231_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST231_sec2.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST232_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST232_sec2.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST240_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST240_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST240_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST240_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST241_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST241_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST241_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST241_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST242_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST242_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST242_sec3.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST250_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST250_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST250_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST250_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST251_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST251_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST251_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST251_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST252_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST252_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST252_sec3.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST260_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST260_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST260_sec3.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST262_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST262_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST262_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST262_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST263_sec1.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST263_sec2.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST263_sec3.tex >> INST_index.tex
sed -e '1,/^\\vfil \\eject/!d' INST263_sec4.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST290_sec1.tex >> INST_index.tex

sed -e '1,/^\\vfil \\eject/!d' INST292_sec1.tex >> INST_index.tex

echo "\bye" >> INST_index.tex

tex INST_index.tex

dvips -Ppdf -o INST_index.ps INST_index.dvi

ps2pdf INST_index.ps

mv -v INST_index.pdf ../output

rm -v INST_index.ps




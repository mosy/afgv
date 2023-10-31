## Create worksheets from the files in this directory.

SEQS:=$(wildcard *.seq)
PDFFILES=$(patsubst %.seq,../output/%.pdf,$(SEQS))
IPDFFILES=$(patsubst %.seq,../output/%_instructor.pdf,$(SEQS))

../output/%.pdf: %.seq
	../scripts/gandmake.bash $* 

../output/%_instructor.pdf: %.seq
	../scripts/gandmake.bash $* _instructor


all: $(PDFFILES) $(IPDFFILES) 
#	@./INST_index.bash
#	@./INST_syllabi.bash

clean:
	rm -f junk* *.bak all.tex output.* *.dvi

# Note: this makefile differs from the one found in the
# Socratic Electronics project.  Here, only PostScript 
# files are produced for "instructor" worksheets.  
# Regular worksheets are produced in PDF format.



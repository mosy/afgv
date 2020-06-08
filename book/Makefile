# Makefile for managing ``Lessons In Industrial Instrumentation'' textbook

SRC = afgv.latex

VERSION = afgv0.01

# Generates PostScript and PDF output
afgv.pdf: $(SRC)
	make afgv.ind
	dvips -Ppdf -o afgv.ps afgv.dvi
	ps2pdf afgv.ps afgv.pdf
#	ps2pdf -dPermissions=0 liii.ps liii.pdf
#	ps2pdf -dPDFSETTINGS=/ebook liii.ps liii.pdf
#	ps2pdf -dPDFSETTINGS=/printer liii.ps liii.pdf
#	rm -f liii.ps

# Generates DVI output using LaTeX, without creating PostScript or PDF output files
afgv.dvi: $(SRC)
	latex afgv.latex

# Generates DVI output using LaTeX, complete with index entries, cross-references, etc.
afgv.ind: $(SRC)
	latex afgv.latex
	makeindex afgv.idx
	latex afgv.latex

# Generates gzipped .tar file containing all the source files necessary to build the book
archive: $(SRC)
	tar cvf afvg.tar afvg.latex *eps *jpg *bmp *png *lps afvg.pdf Makefile
	gzip liii.tar

# Generates a complete ".tar.gz" archive of a public release version, source files and PDF output.
# You should change the version filename below before executing this Make option!

archive_public: $(SRC)
	make liii.pdf
	cp -v liii.latex $(VERSION).latex
	cp -v liii.pdf $(VERSION).pdf
	tar cvf $(VERSION).tar $(VERSION).latex *eps *jpg *bmp *png *lps $(VERSION).pdf Makefile
	gzip -f $(VERSION).tar
	cp -v $(VERSION).tar.gz /home/tony/sinst/new/book
	cp -v $(VERSION).tar.gz liii.tar.gz
	cp -v liii.tar.gz /home/tony/sinst/new/book




#!/bin/bash

echo "Creating Socratic Instrumentation source tarball..."
DIRNAME=sinst
#DIRNAME=sinst_`date +%Y%m%d`

# Creating temporary tarball directory
mkdir -p $DIRNAME/output

# Copying the desired source files into temporary tarball directory
cp -R src scripts doc book $DIRNAME
cp *Makefile $DIRNAME
cp index.html $DIRNAME
#cp output/Makefile $DIRNAME/output
#cp buildws $DIRNAME

# Deleting unnecessary files from tarball directories
rm -f $DIRNAME/src/*.dvi
rm -f $DIRNAME/src/*.pdf
rm -f $DIRNAME/book/*.tar.gz
rm -f $DIRNAME/book/*.dvi
rm -f $DIRNAME/book/*.pdf

# Creating gzipped tarball
tar cvf $DIRNAME.tar $DIRNAME
gzip $DIRNAME.tar

# Making a "dateless" copy of the tarball.
# This line is necessary only if DIRNAME
# contains the date.
#cp -v $DIRNAME.tar.gz sinst.tar.gz

# Deleting tarball directory
rm -rf $DIRNAME


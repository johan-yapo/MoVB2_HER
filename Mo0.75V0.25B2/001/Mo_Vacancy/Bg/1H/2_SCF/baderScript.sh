#!/bin/sh

echo "Copying vtsts scripts to folder"
cp -r ~/codes/vtsts-scripts/Fortran/ .
cp ~/codes/vtsts-scripts/chgsum.pl .
cp ~/codes/vtsts-scripts/chgsumf.pl .

echo "Done copying scripts, now starting Bader analysis"

/home/jyapo/codes/vtsts-scripts/./chgsum.pl AECCAR0 AECCAR2

sleep 5s #waits for 5 seconds

/home/jyapo/codes/baderProgram/bader/./bader CHGCAR -ref CHGCAR_sum

echo "Bader analysis complete"

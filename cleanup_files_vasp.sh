#!/bin/bash
# cleanup_files.sh: Recursively removes all files named CHG, CONTCAR, or PROCAR in the current directory and subdirectories.

find . -type f \( -name 'CHG*' -o -name 'CONTCAR' -o -name 'PROCAR' -o -name 'AEC*' -o -name 'DOSCAR' -o -name 'EIGENV 
AL' -o -name 'IBZKPT' -o -name 'OSZICAR' -o -name 'OUTCAR' -o -name 'PCDAT' -o -name 'PROCAR' -o -name 'REPORT' -o -name 'slurm*' -o -name 'standard*' -o -name 'vasprun*' -o -name 'WAVECAR' -o -name 'XDATCAR' -o -name 'error*' \) -delete

#!/bin/sh

#PBS -e standard_error
#PBS -l nodes=2,walltime=8:00:00
#PBS -N pt_Mo0.5V0.5B2_UnitCell_relax

module load vasp

mpirun /opt/vasp/5.4.4/bin/vasp_std


#!/bin/sh

#PBS -e standard_error
#PBS -l nodes=3,walltime=7:00:00
#PBS -N MoVB_50/50_110-Hol_1H_relax

module load vasp

mpirun /opt/vasp/5.4.4/bin/vasp_std


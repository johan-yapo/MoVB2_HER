#!/bin/sh

#SBATCH --job-name="Mo0.75_50%_Hol_2H_relax"
#SBATCH --output="Mo0.75_50%_Hol_2H_relax.%j.%N.out"
#SBATCH -e error_log.%j.err
#SBATCH --partition=shared #Use shared if using less than 128 cores on 1 node and compute if you want exclusive use on single nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=72
#SBATCH --account=ucr125
#SBATCH --export=ALL
#SBATCH -t 6:00:00

##Environment

module purge
module load slurm
module load cpu
module load gcc/9.2.0
module load openmpi
module load vasp
exe=`which vasp_std`
export OMP_NUM_THREADS=1
mpirun --mca btl_openib_if_include "mlx5_2:1" --mca btl openib,self,vader $exe >& vasp.log


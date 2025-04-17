#!/bin/sh
#SBATCH --job-name="MoB2_75_2x_4"
#SBATCH --output="MoB2_75_2x_4.%j.%N.out"
#SBATCH -e error_log.%j.err
#SBATCH --partition=shared #Use shared if using less than 128 cores on 1 node and compute if you want exclusive use on single nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --account=ucr125
#SBATCH --export=ALL
#SBATCH -t 24:00:00

 /home/jyapo/codes/lobster-4.1.0/./lobster-4.1.0 

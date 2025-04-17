#!/bin/sh
#SBATCH --job-name="LOBSTER_MoB2_test"
#SBATCH --output="LOBSTER_moB2_test.%j.%N.out"
#SBATCH -e error_log.%j.err
#SBATCH --partition=shared #Use shared if using less than 128 cores on 1 node and compute if you want exclusive use on single nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --account=ucr125
#SBATCH --export=ALL
#SBATCH -t 2:00:00

 /home/jyapo/codes/lobster-4.1.0/./lobster-4.1.0 

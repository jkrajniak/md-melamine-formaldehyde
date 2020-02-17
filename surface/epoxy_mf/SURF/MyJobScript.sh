#!/bin/bash -l
#PBS -N Mixed 
#PBS -l mem=8gb
#PBS -l walltime=24:00:00
#PBS -o Output.job
#PBS -j oe
#PBS -l nodes=1:ppn=20
module load OpenMPI/1.6.5-GCC-4.8.2
module load GROMACS/4.6.5-intel-2014a-hybrid
module load impi/4.1.3.045
cd $PBS_O_WORKDIR

export GMX_MAXCONSTRWARN=-1
n_proc=$(cat $PBS_NODEFILE | wc -l)
n_node=$(cat $PBS_NODEFILE | uniq | wc -l)
mpdboot -f $PBS_NODEFILE -n $n_node -r ssh -v
mpiexec -machinefile $PBS_NODEFILE -n $n_proc mdrun_mpi -v 
mpdallexit

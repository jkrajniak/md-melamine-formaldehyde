#!/bin/bash -l
#PBS -N MELF_NPT_468
#PBS -l walltime=48:00:00
#PBS -o Output.job
#PBS -j oe
#PBS -l nodes=2:ppn=20
#PBS -M jakub.krajniak@cs.kuleuven.be
#PBS -A  lp_polymer_goa_project


module purge
module load GROMACS
MDRUN="mdrun_mpi"
GROMPP="grompp_mpi"

cd $PBS_O_WORKDIR

# Prepare the tpr
$GROMPP -v

# Set up OpenMPI environment
n_proc=$(cat $PBS_NODEFILE | wc -l)
n_node=$(cat $PBS_NODEFILE | uniq | wc -l)
mpdboot -f $PBS_NODEFILE -n $n_node -r ssh -v

mpiexec -np $n_proc $MDRUN # -cpi state.cpt

mpdallexit

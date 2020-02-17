#!/bin/bash -l
#PBS -N test_CG 
#PBS -l mem=16gb
#PBS -l walltime=24:00:00
#PBS -o Output.job
#PBS -j oe
#PBS -l nodes=1:ppn=20

#module load votca/1.2.3

  source /user/leuven/307/vsc30787/PROGRAMS/VOTCA/bin/VOTCA.bash
  module remove OpenMPI
  module load GROMACS/4.6.5-intel-2014a-hybrid
  MDRUN="mdrun_mpi"
  GROMPP="grompp_mpi"

cd $PBS_O_WORKDIR

# Prepare the tpr
#$GROMPP -v

#MPI_RUN_CMD="$MDRUN -s $TPR -cpi state.cpt -o $TRR -x $XTC -c $OUTPUT -e $EDR -g $LOG"
#MPI_RUN_CMD="csg_inverse --options settings1.xml"

# Set up OpenMPI environment
n_proc=$(cat $PBS_NODEFILE | wc -l)
n_node=$(cat $PBS_NODEFILE | uniq | wc -l)
mpdboot -f $PBS_NODEFILE -n $n_node -r ssh -v

csg_inverse --options settings2.xml

mpdallexit

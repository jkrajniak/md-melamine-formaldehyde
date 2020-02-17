#!/bin/bash

for i in {5..11}
do
for j in {5..11}
do
echo $i $j | g_rdf_mpi -s topol.tpr -f traj.xtc -n index.ndx -o rdf_CG_$i-$j.xvg
echo $i $j | g_rdf_mpi -s topol.tpr -f ../traj_cg.trr -n index.ndx -o rdf_AA_$i-$j.xvg
done
done

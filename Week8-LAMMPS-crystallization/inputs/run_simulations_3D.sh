#!/bin/bash

# Full path to the LAMMPS executable
LAMMPS_EXEC="/scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/lmp"

# Loop over the density values from 0.8 to 1.5 with a step of 0.1
for density in $(seq 0.8 0.1 1.5); do
    # Run the LAMMPS simulation for the current density
    mpirun $LAMMPS_EXEC -var density $density -in 3dWCA.in -log 3dWCA_d${density}.log
done

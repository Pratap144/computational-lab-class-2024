#!/bin/bash
for density in $(seq 0.5 0.1 1.1); do
  mpirun lmp -var density $density -in ../Inputs/2dWCA.in -log 2dWCA_d${density}.log
done

#!/bin/bash
#SBATCH --job-name=nbody_bench
#SBATCH --error=nbody_%j.err
#SBATCH --time=05:00:00
#SBATCH --partition=Centaurus
#SBATCH --mem=10G

srun $HOME/nobody-par/para/nbody planet 200 5000000 10000 4
srun $HOME/nobody-par/para/nbody planet 200 5000000 10000 8
srun $HOME/nobody-par/para/nbody planet 200 5000000 10000 12

srun $HOME/nobody-par/para/nbody 100 1 10000 1000 4
srun $HOME/nobody-par/para/nbody 100 1 10000 1000 8
srun $HOME/nobody-par/para/nbody 100 1 10000 1000 12

srun $HOME/nobody-par/para/nbody 1000 1 10000 1000 4
srun $HOME/nobody-par/para/nbody 1000 1 10000 1000 8
srun $HOME/nobody-par/para/nbody 1000 1 10000 1000 12


srun $HOME/nobody-par/sequential/nbody planet 200 5000000 10000

srun $HOME/nobody-par/sequential/nbody 100 1 10000 1000

srun $HOME/nobody-par/sequential/nbody 1000 1 10000 1000

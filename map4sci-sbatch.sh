#!/bin/bash

#SBATCH -J Map4sci_datasets
#SBATCH -p general
#SBATCH -o filename_%j.txt
#SBATCH -e filename_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=amandyar@iu.edu
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --time=24:00:00
#SBATCH --mem=32G
#SBATCH -A general

module load python
module load singularity

#Run your program
srun ~/map4sci-data-test/map4sci.sh 

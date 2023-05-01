#!/bin/bash

cd data/myaura/CG
for dataset in *; do
   pushd $dataset
   mkdir -p raw-data site
   echo sbatch ~/map4sci-data-test/map4sci-sbatch.sh
   popd
done

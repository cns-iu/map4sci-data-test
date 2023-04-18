#!/bin/bash

for project in data/*; do
   for tech in $project/*; do
      pushd $tech
      echo sbatch ~/map4sci-data-test/map4sci-sbatch.sh
      popd
   done;
done

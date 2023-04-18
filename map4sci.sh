#!/bin/bash

# Assumes it's being run from a directory with datasets, raw-data, and site dir

CURRENT_VERSION=20230418
CWL_OPTS=--singularity
CWL_FILE=https://raw.githubusercontent.com/cns-iu/map4sci/main/map4sci.cwl
SCRIPT=./scripts/99x-run-all-datasets.sh

FIRST_DATASET=$(ls datasets | head -1)

mkdir -p datasets raw-data site
time cwl-runner $CWL_OPTS $CWL_FILE \
    --dataset $FIRST_DATASET --version $CURRENT_VERSION \
    --datasets_dir ./datasets --rawdata_dir ./raw-data --site_dir ./site \
    --script_cmd "cd /workspace/data-processor && ${SCRIPT}"

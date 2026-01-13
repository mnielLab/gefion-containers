#! /bin/bash

WORKDIR=$(dirname $0)
export AF3_RESOURCES_DIR=$(realpath $WORKDIR/../../../../alphafold3/alphafold3_resources)
export AF3_MODEL_PARAMETERS_DIR=${AF3_RESOURCES_DIR}/weights
export AF3_DATABASES_DIR=${AF3_RESOURCES_DIR}/tcrpmhc_databases
export AF3_SRC=$(realpath $WORKDIR/../../../../alphafold3/alphafold3_tcrpmhc_src) #/home/projects2/alphafold3/alphafold3_tcrpmhc_src

export AF3_IMAGE=$1
export AF3_INPUT_DIR=$2
export AF3_OUTPUT_DIR=$3

apptainer exec \
     --nv \
     --bind $AF3_INPUT_DIR:/mnt/af_input \
     --bind $AF3_OUTPUT_DIR:/mnt/af_output \
     --bind $AF3_MODEL_PARAMETERS_DIR:/mnt/models \
     --bind $AF3_DATABASES_DIR:/mnt/tcrpmhc_databases \
     --bind $AF3_SRC:/mnt/af_source \
     $AF3_IMAGE \
     python /mnt/af_source/run_alphafold_tcrpmhc.py \
     --input_dir /mnt/af_input \
     --model_dir /mnt/models \
     --db_dir /mnt/tcrpmhc_databases \
     --output_dir /mnt/af_output \
     --only_query_for_template

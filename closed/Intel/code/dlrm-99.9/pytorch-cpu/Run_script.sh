#! /bin/bash

cd /home/ML_DLRM/dlrm_pytorch
source ./setup_dataset.sh
source ./setup_env_offline.sh
bash run_mlperf.sh --mode=offline --type=perf --dtype=fp32

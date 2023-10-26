#! /bin/bash

cd /opt/workdir/code/dlrm-99.9/pytorch-cpu
source ./setup_dataset.sh
source ./setup_env_offline.sh
bash run_mlperf.sh --mode=offline --type=perf --dtype=fp32

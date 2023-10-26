#! /bin/bash

cd /opt/workdir/code/dlrm-99.9/pytorch-cpu
bash run_mlperf.sh --mode=offline --type=perf --dtype=fp32

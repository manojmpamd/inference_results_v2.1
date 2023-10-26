
export cores=$(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l) 
export NUM_SOCKETS=$(lscpu | grep "Socket(s)" | awk 'NR==1 {print $2}')      # i.e. 8
export num_physical_cores=$((cores / $NUM_SOCKETS))
export CPUS_PER_SOCKET=$num_physical_cores   # i.e. 28
export CPUS_PER_PROCESS=$num_physical_cores  # which determine how much processes will be used
                            # process-per-socket = CPUS_PER_SOCKET/CPUS_PER_PROCESS
export CPUS_PER_INSTANCE=1  # instance-per-process number=CPUS_PER_PROCESS/CPUS_PER_INSTANCE
                             # total-instance = instance-per-process * process-per-socket
export BATCH_SIZE=4096
#export DNNL_MAX_CPU_ISA=AVX512_CORE_AMX

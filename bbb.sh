sleep 5
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 1 -num_exp 0
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 2 -num_exp 0
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 1 -num_exp 1
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 2 -num_exp 1
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 1 -num_exp 30
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2 && sudo sysctl vm.drop_caches=1
perf stat -e stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem  -- ./gpu_accel_test.sh -model densenet201 -Gstart 0 -Gend 0 -num_thread 2 -num_exp 30

sleep 5
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2
perf stat -e bus_access,stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem -- ./gpu_accel_test.sh -model densenet201 -Gstart 30 -Gend 100 -num_thread 8 -num_exp 30
sudo sysctl vm.drop_caches=4 && sudo sysctl vm.drop_caches=3 && sudo sysctl vm.drop_caches=2
perf stat -e bus_access,stalled-cycles-backend,stalled-cycles-frontend,cpu-cycles,mem_access,stall_backend_mem -- ./gpu_accel_test.sh -model densenet201 -Gstart 30 -Gend 100 -num_thread 1 -num_exp 30

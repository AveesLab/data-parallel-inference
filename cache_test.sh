#!/bin/bash

model="densenet201"
num_exp=30
num_iter=1

timestamp=$(date '+%Y%m%d_%H%M')

out_csv="./perf_stats_${timestamp}.csv"
if [ ! -e "$out_csv" ]; then
    echo "threds,cache_references,cache_misses,cache_miss_rate,LLC_loads,LLC_load_misses,LLC_miss_rate" > "$out_csv"
fi

while [[ "$#" -gt 0 ]]; do
    case $1 in
	-model)
	    model="$2"
	    shift
	    ;;
	-num_iter)
	    num_iter="$2"
	    shift
	    ;;
	-num_exp)
	    num_exp="$2"
	    shift
	    ;;
	*)
	    echo "Unknown parameter: $1"
	    exit 1
	    ;;
    esac
    shift
done

echo "model = $model"
echo "num_iter = $num_iter"
echo "num_exp = $num_exp"

sleep 5

for (( i=1; i<=8; i++ )); do
    for (( j=1; j<=$num_iter; j++ )); do
	sleep 2
        sudo sysctl vm.drop_caches=3
        perf stat -x, -e cache-references,cache-misses,LLC-loads,LLC-load-misses -- ./gpu_accel_test.sh -model $model -Gstart 0 -Gend 0 -num_thread $i -num_exp $num_exp 2>&1 \
	| awk -F, -v th="$i" '
	#awk script:
	# -F,: distinct csv result of perf stat by ,
	/cache-references/ {
	    crefs = $1
	}
        /cache-misses/ {
	    cmiss = $1
	    missrate = $6
	}
	/LLC-loads/ {
	    llcl = $1
	}
	/LLC-load-misses/ {
	    llcm = $1
	    llcrate = $6
	}
	END {
	    gsub(/^[ \t]+|[ \t]+$/, "", crefs)
	    gsub(/^[ \t]+|[ \t]+$/, "", cmiss)
            gsub(/^[ \t]+|[ \t]+$/, "", missrate)
            gsub(/^[ \t]+|[ \t]+$/, "", llcl)
            gsub(/^[ \t]+|[ \t]+$/, "", llcm)
            gsub(/^[ \t]+|[ \t]+$/, "", llcrate)

	    printf "%d,%s,%s,%s,%s,%s,%s\n", th, crefs, cmiss, missrate, llcl, llcm, llcrate
        }
	' >> "$out_csv"
    

    done
done

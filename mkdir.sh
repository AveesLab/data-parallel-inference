mkdir measure
cd measure

## Layer time
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p layer_time/$model/
done

## Sequential
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p sequential/$model/
done

touch sequential_cpu_utilization.csv
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	cp sequential_cpu_utilization.csv sequential/$model/
done
rm sequential_cpu_utilization.csv

## Sequential-multiblas
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p sequential-multiblas/$model/
done

touch sequential_cpu_utilization.csv
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	cp sequential_cpu_utilization.csv sequential-multiblas/$model/
done
rm sequential_cpu_utilization.csv

## Pipeline
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p pipeline/$model/
done

touch pipeline_cpu_utilization.csv
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	cp pipeline_cpu_utilization.csv pipeline/$model/
done
rm pipeline_cpu_utilization.csv

## Data-Parallel
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p data-parallel/$model/
done

touch data-parallel_cpu_utilization.csv
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	cp data-parallel_cpu_utilization.csv data-parallel/$model/
done
rm data-parallel_cpu_utilization.csv

## Data-Parallel-MP
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p data-parallel-mp/$model/
done

touch data-parallel-mp_cpu_utilization.csv
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	cp data-parallel-mp_cpu_utilization.csv data-parallel-mp/$model/
done
rm data-parallel-mp_cpu_utilization.csv

## GPU-Accel
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel/$model/
done

## GPU-Accel
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel-reverse/$model/
done

## GPU-Accel_1thread
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel_1thread/$model/
done

## GPU-Accel_multi-thread
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel_multi-thread/$model/
done

## GPU-Accel_1thread
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel-reverse_1thread/$model/
done

## GPU-Accel_multi-thread
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel-reverse_multi-thread/$model/
done


## GPU-Accel-MP
for model in "yolov4" "yolov4-tiny" "yolov7" "yolov7-tiny" "densenet201" "resnet152" "csmobilenet-v2" "squeezenet" "enetb0"
do
	mkdir -p gpu-accel-mp/$model/
done

# ./darknet detector sequential ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -core_id 4 -num_exp 100

# ./darknet detector data-parallel ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_thread 2 -num_exp 100

# ./darknet detector data-parallel-mp ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_process 2 -num_exp 100

# ./darknet detector gpu-accel ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_thread 3 -glayer 10 -num_exp 10

# ./darknet detector gpu-accel-mp ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_process 3 -glayer 305 -num_exp 100

./darknet detector cpu-reclaiming ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_thread 3 -glayer 100 -rlayer 300 -num_exp 150

# ./darknet detector cpu-reclaiming-mp ./cfg/imagenet1k.data ./cfg/densenet201.cfg ./weights/densenet201.weights data/dog.jpg -num_process 2 -glayer 200 -rlayer 300 -num_exp 150


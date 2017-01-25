To set up the data to train run:

`./setup.sh`

To run the basic training:

`train -c config.json -i cifar10_training.nc -o cifar10_training.nc -n gl.nc -b 256 -e 10`

To run the parallel training:

`mpirun --allow-run-as-root -np 4 train -c config.json -i cifar10_training.nc -o cifar10_training.nc -n gl.nc -b 256 -e 10`


# Pull the data and unzip
wget https://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz 
tar -xvf cifar-10-binary.tar.gz 

# Pull out required data
mv cifar-10-batches-bin/test_batch.bin test.bin
cat cifar-10-batches-bin/data_batch_*.bin > training.bin

# Reformat for dsstne
g++ dparse.cpp -o dparse -lnetcdf -lnetcdf_c++4 --std=c++0x
./dparse

#!/bin/bash
sudo apt-get update;
sudo apt-get -y install git cmake gcc g++ ocl-icd-opencl-dev;
git clone http://github.com/bogdanadnan/ariominer.git;
cd ariominer;
mkdir build;
cd build;
cmake ..
make
./ariominer --mode miner --pool http://mine.arionumpool.com --wallet 2EWzXdsPh1W9WEYtMuuubdSzvcPsM4PJQjN7viEyYRWvjSEs7noPF4T58kkb77bnR4QEnddUh7MDUV6pWADhueQL --name tolga


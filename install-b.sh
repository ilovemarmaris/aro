#!/bin/bash
sudo apt-get update;
sudo apt-get -y install git cmake gcc g++ ocl-icd-opencl-dev;
git clone http://github.com/bogdanadnan/ariominer.git;
cd ariominer;
mkdir build;
cd build;
cmake ..
make
./ariominer --mode miner --pool http://mine.arionumpool.com --wallet 3oBrsyMm6P7iwNrGd6yx9NXpWu4sdBKJjtASan9WKT3yKyhE3PjViyXcsy6GLzukGsLRTj5ixNKxXLnQkGEnSUXz --name sadikturan


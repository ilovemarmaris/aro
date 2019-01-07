#!/bin/bash
while true; do
    sudo apt-get update;
    sudo apt-get -y install git cmake gcc g++ ocl-icd-opencl-dev;
    mkdir aro
    cd aro
    timeout 19h ./azure.sh
    cd ..
    rm -rf aro
done;

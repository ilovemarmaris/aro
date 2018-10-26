#!/bin/bash
# create a folder to put the miner in, and go inside it
mkdir arion
cd arion

# download latest binary archive, make sure that you use the correct url for your Ubuntu version (16, 17, 18 ...)
wget -O arionum-gpu-miner.tar.gz "https://bitbucket.org/cryptogone/arionum-gpu-miner/downloads/arionum-gpu-miner-v1.5.1-ubuntu16-cuda9.0.tar.gz"

# extract archive 
tar xzvf arionum-gpu-miner.tar.gz

worker=`hostname`
pool="http://mine.arionumpool.com"
wallet="3oBrsyMm6P7iwNrGd6yx9NXpWu4sdBKJjtASan9WKT3yKyhE3PjViyXcsy6GLzukGsLRTj5ixNKxXLnQkGEnSUXz"
threads="3"
batches="230"

# set this to false if you do not want miner to auto relaunch after crash
relaunch_miner_on_crash="true"

while :
do
	# -u means use all device, you can also use -d to specify list of devices (ex: -d 0,2,5)
	./arionum-cuda-miner -u -b "$batches" -t "$threads" -p "$pool" -a "$wallet" -i "$worker"

	if [ "$relaunch_miner_on_crash" = "true" ]; then
		echo "miner crashed, relaunching in 5 seconds ..."
		sleep 5
	else
		break
	fi
done



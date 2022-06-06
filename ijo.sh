sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y &&
sudo apt install git -y &&
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git 
cd ccminer &&
chmod +x build.sh &&
chmod +x configure.sh &&
chmod +x autogen.sh &&
./build.sh &&
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956#xnsub -u RHvUpxcAex5cQWtM8ssweePvjQqEittXNQ.Circl  -x socks5://192.252.211.197:14921 -t 39

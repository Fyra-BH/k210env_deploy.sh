apt update
apt upgrade -y
apt install make cmake wget -y
cd ~
mkdir -p kendryte/tarballs
cd kendryte/tarballs
wget https://hub.fastgit.xyz/kendryte/kendryte-gnu-toolchain/releases/download/v8.2.0-20190409/kendryte-toolchain-ubuntu-amd64-8.2.0-20190409.tar.xz
wget https://hub.fastgit.xyz/kendryte/kendryte-standalone-sdk/archive/refs/tags/V0.5.6.tar.gz
cd ..
tar vxf tarballs/kendryte-toolchain-ubuntu-amd64-8.2.0-20190409.tar.xz
tar vxf tarballs/V0.5.6.tar.gz
cd ~/kendryte/kendryte-toolchain/bin/
export PATH=$PATH:$(pwd)

# 下面开始编译hello_world工程

cd kendryte-standalone-sdk-0.5.6
cd ~/kendryte/kendryte-standalone-sdk-0.5.6/
mkdir -p build && cd build
cmake .. -DPROJ=hello_world
make -j8
# 完成

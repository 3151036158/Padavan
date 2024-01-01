sudo apt-get update
sudo apt install unzip libtool-bin curl cmake gperf gawk flex bison nano xxd \
    fakeroot kmod cpio git python3-docutils gettext automake autopoint \
    texinfo build-essential help2man pkg-config zlib1g-dev libgmp3-dev \
    libmpc-dev libmpfr-dev libncurses5-dev libltdl-dev wget libc-dev-bin libctf-nobfd0 libcunit1-dev libhdf5-dev libopenblas-dev -y

    cd toolchain-mipsel
    sh dl_toolchain.sh
    cd ../
    #nano trunk/configs/templates/MI-NANO.config

    cd  trunk
sudo ./clear_tree
fakeroot ./build_firmware_modify PSG1218
#脚本第一个参数为路由型号，在trunk/configs/templates/中
#编译好的固件在trunk/images里

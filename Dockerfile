# Base image: Ubuntu with official Plex
FROM plexinc/pms-docker

MAINTAINER James Kinney "https://github.com/jamesfkinney"

# include init scripts
COPY root/ /

# pull, compile, and install pCloud console client along with pre-requisites
RUN \
    apt-get update && \
    apt-get install -y cmake zlib1g-dev libboost-system-dev libboost-program-options-dev libpthread-stubs0-dev libfuse-dev git g++ lsb-release fuse kmod nano \ 
    && \
    mkdir -p /tmp/console-client && \
    git clone https://github.com/pcloudcom/console-client.git /tmp/console-client/ \
    && \
    cd /tmp/console-client/pCloudCC/lib/pclsync/ && \
    make clean && \
    make fs && \
    cd ../mbedtls/ && \
    cmake . && \
    make clean && \
    make && \
    cd ../.. && \
    cmake . && \
    make && \
    make install && \
    ldconfig && \
    rm -r /tmp/* && \
    apt-get -y autoremove && \
    apt-get -y clean

FROM gitpod/workspace-full

RUN sudo apt-get update \
 && apt-get install -y --no-install-recommends git cmake ninja-build gperf \
    ccache dfu-util device-tree-compiler wget \
    python3-pip python3-setuptools python3-tk python3-wheel xz-utils file \
    make gcc gcc-multilib gcc-arm-none-eabi libnewlib-arm-none-eabi \
 && echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.bashrc && pip3 install west

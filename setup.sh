#!/bin/bash

# Install CUDA
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda
rm cuda-keyring_1.1-1_all.deb

# Install pip
sudo apt-get -y install python3-pip

# Configure aliases
sudo cp bash_alias.sh /etc/profile.d/
source bash_alias.sh

# Install modules
pip3 install --no-warn-script-location \
    huggingface_hub ipython trl torch torchvision numpy \
    accelerate bitsandbytes

# configure git for huggingface
git config --global credential.helper store


#!/bin/bash

# Download an Anaconda3 release and name the file `conda.sh`

# curl https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh -o conda.sh

# If you wish to install Miniconda3 instead, comment out the line above and uncomment the line below:
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o conda.sh

# Run the downloaded `conda.sh` script using bash
# — Use the `-b` flag to run the installer in batch mode
# — Use the `-p` flag to specify where the package manager will actually be installed
bash conda.sh -b -p $PLATFORM_APP_DIR/conda

# Source the following `conda.sh` file to put the `conda` command in our path for the duration of this script
. /app/conda/etc/profile.d/conda.sh

# Add the above command to `.bash_profile` so that it is available during SSH sessions
echo ". /app/conda/etc/profile.d/conda.sh" >> ~/.bash_profile
echo "conda activate" >> ~/.bash_profile

# Enter the base conda environment and prepare to configure it
conda activate base

# Update conda itself
conda update -n base -c defaults conda

# OPTIONAL: Print out debugging information in the build hook
conda info

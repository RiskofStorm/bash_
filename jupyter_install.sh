#!/usr/bin/env bash



# PYTHON 2.7 KERNEL INSTALL
#conda create -n py27 python=2 ipykernel
#conda activate py27
#python -m ipykernel install --user
#conda deactivate
#echo "Python 2 kernel -- DONE"


# R KERNEL ADD !!!  must be already installed R  !!! official site  https://www.r-project.org/
sudo apt-get install libcurl4-openssl-dev libssl-dev
Rscript jupyter_r_kernel_add.r
echo "R kernel -- DONE"

# JYPUTER EXTENSIONS INSTALL
conda install -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge jupyter_nbextensions_configurator
echo "Extentions -- DONE"
#!/usr/bin/env bash



# PYTHON KERNEL INSTALL
conda create -n py27 python=2 ipykernel
source activate ipykernel_py2
python -m ipykernel install --user
conda activate py27
conda deactivate
echo "Python 2 kernel -- DONE"

# SCALA KERNEL INSTALL
git clone https://github.com/alexarchambault/jupyter-scala.git
sudo apt-get install sbt
cd jupyter-scala
sbt cli/packArchive
echo "Scala kernel -- DONE"

# R KERNEL ADD !!!  must be already installed R  !!! official site  https://www.r-project.org/
sudo apt-get install libcurl4-openssl-dev libssl-dev
Rscript jupyter_r_kernel_add.r
echo "R kernel -- DONE"

# JYPUTER EXTENSIONS INSTALL
conda install -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge jupyter_nbextensions_configurator
echo "Extentions -- DONE"
#!/usr/bin/env bash



# PYTHON KERNEL INSTALL
conda create -n py27 python=2 ipykernel
conda activate py27
python -m ipykernel install --user
conda deactivate
echo "Python 2 kernel -- DONE"

# TODO: make it work. cli/target - where is it?
# SCALA KERNEL INSTALL
#git clone https://github.com/alexarchambault/jupyter-scala.git
#echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
#sudo apt-get update
#sudo apt-get install sbt -y
#cd jupyter-scala
#sbt cli/packArchive


#git clone https://github.com/alexarchambault/jupyter-scala.git
#cd jupyter-scala
#sbt cli/packArchive
#sbt publishM2
## unpack cli/target/jupyter-scala_2.11.6-0.2.0-SNAPSHOT.zip
#cd cli/target/jupyter-scala_2.11.6-0.2.0-SNAPSHOT/bin
#./jupyter-scala


#cd ..
#rm -rf jupyter-scala
#echo "Scala kernel -- DONE"

# R KERNEL ADD !!!  must be already installed R  !!! official site  https://www.r-project.org/
sudo apt-get install libcurl4-openssl-dev libssl-dev
Rscript jupyter_r_kernel_add.r
echo "R kernel -- DONE"

# JYPUTER EXTENSIONS INSTALL
conda install -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge jupyter_nbextensions_configurator
echo "Extentions -- DONE"
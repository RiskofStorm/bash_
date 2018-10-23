FROM ubuntu:18.10
FROM r-base
FROM continuumio/anaconda

MAINTAINER Daniel Abramov <github.com/riskofstorm>

ARG conda_path=/opt/conda/bin/conda

RUN \
    apt-get update \
#    && apt-get install -y -f libcur14-openssl-dev  \
#    && apt-get install -y libssl-dev \
    && apt-get install -y openjdk-11-jdk \
    && $conda_path install -c conda-forge jupyter_contrib_nbextensions \
    && Rscript -e "install.packages('devtools', dependencies=T) \
                    devtools::install_github('IRkernel/IRkernel') \
                    IRkernel::installspec()" \
    && Rscript -e "install.packages(c( \
                  "tidyr", "dplyr", "xts","zoo", "quantmod", "quantstrat", "astsa", "TTR", \
                  "RSQLite", "RPostgreSQL", "stringr", "plyr", "purrr", "psych", "ggplot2","PerformanceAnalytics", dependencies=T))" \
    && $conda_path install tensorflow -y \
    && $conda_path install keras -y \
    && $conda_path install pyspark -y \
    && $conda_path update --all


ENV JAVA_HOME /usr/lib/jvm/openjdk-11
ENV PATH=${PATH}:${JAVA_HOME}/bin

USER $USER

RUN $conda_path config --add channels conda-forge \
    && $conda_path create --name java_env scijava-jupyter-kernel \
    && source activate java_env \
    && source deactivate
WORKDIR /home/$USER/docker_ipynb

CMD jupyter notebook  --NotebookApp.token='RISKOFSTORM'

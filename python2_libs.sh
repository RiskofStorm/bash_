#!/usr/bin/env bash


# SETUP
libs=(pandas matplotlib numpy scipy scikit-learn seaborn)
python_env=py27
user=storm


export PATH="/home/$user/anaconda3/bin:$PATH"
source activate ${python_env}

for name in $libs[*]
do
    conda install $name -yes
done

conda deactivate

echo "Installed ${libs[*]}"

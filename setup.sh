#!/bin/bash

#### export module load anaconda3

conda activate /home/alvarez/miniconda3/envs/seamless-bb-r

HOMEDIR=$PWD

git clone --recurse-submodules https://github.com/BoldingBruggeman/seamless-notebooks.git

MY_DIR=$HOMEDIR/seamless-notebooks

cd $MY_DIR/extern

git clone --recurse-submodules git@github.com:inogs/bfmforfabm.git ogs

cd $MY_DIR/extern/fabm

git checkout neccton

cd $MY_DIR/extern/gotm

git checkout 5f950ca05e08
git pull --recurse-submodules
git submodule update --init --recursive

cd $HOMEDIR

bash ./my_install


#!/bin/sh
set -e

BDSF_DIR=$HOME/bdsf 

apt-get update
apt-get install -y libboost-python-dev gfortran build-essential git libboost-numpy-dev python-setuptools python3 python3-pip

pip3 install setuptools numpy

mkdir $BDSF_DIR
git clone https://github.com/lofar-astron/PyBDSF.git $BDSF_DIR
cd $BDSF_DIR
python3 setup.py bdist_wheel
ls dist
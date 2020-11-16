#!/bin/bash
# author: Andre Rosa
# 21 SEP 2020
# objective: Install and creates a virtual environment for TensorFlow test 1
# this script will create a Virtual Environment for the Inception test
#---------------------------------------------------------------------------

#---------------------------------------------------------------------------
#
#---------------------------------------------------------------------------
# INSTALL ESSENTIALS - C++ MAKE
echo -e "\e[96mINSTALL UBUNTU ESSENTIALS (MAKE)\e[39m"
apt-get install build-essential -y
#---------------------------------------------------------------------------
#
#---------------------------------------------------------------------------
# INSTALL PYTHON3
echo -e "\e[96mINSTALL PYTHON3\e[39m"
apt-get update
apt-get -y upgrade
apt-get install -y python3-pip

apt-get install -y build-essential libssl-dev libffi-dev
apt-get install -y libsm6 libxrender1 libfontconfig1 libxext6 libxrender-dev
#---------------------------------------------------------------------------
#
#---------------------------------------------------------------------------
echo -e "\e[96mINSTALL PYTHON VIRTUAL ENV\e[39m"
#CREATE PYTHON ENVIRONMENT
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv

#ACTIVATE PYTHON ENVIRONMENT
echo -e "\e[96mCREATE PYTHON ENVIRONMENT\e[39m"
virtualenv catenv
source catenv/bin/activate

#INSTALL PYTHON MODULES
echo -e "\e[96mINSTALL PYTHON MODULES\e[39m"
# for python 3.7.7
pip install Pillow==7.2.0
pip install tensorflow==2.3.1
pip install Keras==2.4.3

#-----------------------------------------------------------------------------
#
#-----------------------------------------------------------------------------
echo -e "\e[96mNOW ACTIVATE THE VIRTUAL ENV WITH COMMAND -> source ./catenv/bin/activate \e[39m"
#-----------------------------------------------------------------------------

# #---------------------------------------------------------------------------
# #---------------------------------------------------------------------------

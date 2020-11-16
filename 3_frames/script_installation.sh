#!/bin/bash
# author: Andre Rosa
# 21 SEP 2020
# objective: Install and creates a virtual environment for example 3
# this script will create a Virtual Environment for the Frames test
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
cd pyCategorizer

#ACTIVATE PYTHON ENVIRONMENT
echo -e "\e[96mCREATE PYTHON ENVIRONMENT\e[39m"
virtualenv catenv
source catenv/bin/activate

#INSTALL PYTHON MODULES
echo -e "\e[96mINSTALL PYTHON MODULES\e[39m"
pip install numpy==1.18.1
pip install opencv-python==4.1.2.30

#-----------------------------------------------------------------------------
#
#-----------------------------------------------------------------------------
echo -e "\e[96mNOW ACTIVATE THE VIRTUAL ENV WITH COMMAND -> source ./catenv/bin/activate \e[39m"
#-----------------------------------------------------------------------------

# #---------------------------------------------------------------------------
# #---------------------------------------------------------------------------

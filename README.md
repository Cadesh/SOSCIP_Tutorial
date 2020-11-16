# 🐍SOSCIP TensorFlow Python Tutorial🐍 

This repository contains examples of code for TensorFlow, Keras and OpenCV.

These examples are meant to run in a Ubuntu 18.04 machine. If you have a windows computer it is possible to use VMware or VirtualBox to create a local Virtual Machine from a Ubuntu iso (https://releases.ubuntu.com/18.04.5/). 

## Using the Tutorial ##

Each numbered folder contains the Pytohn script and a *script_installation.sh* file that creates a Virtual Environment and install the necessary modules. 

Run the script with the command:

```sudo bash script_installation.sh```

### Python Environments ###

To run the examples it is necessary to have a running virtual environment. 

Each example counts with an installation script that creates a virtual environment named **catenv** that is saved in a *catenv* folder. 

To activate a virtual environment named *catenv* use:

```source catenv/bin/activate```

Then it is possible to run the code with the command:

```python <nameofscript.py>```

**ATTENTION**: The first time the code runs it downloads the Inception Neural Network, it is necessary internet connection.

**ATTENTION**: Each example has different dependencies therefore each has its own **catenv** environment. 
To deactivate a previous environment type 

```deactivate```

To delete the environment simply deactivate dan delete the catenv folder with 

```rm -rf catenv``` 


### Example 1: Identifying Objects in Pictures with InceptionV3 

This example uses InceptionV3 Neural Network to identify objects in pictures. 
The code runs with older versions of Tensorflow and Pillow as described in the installation script. 

### Example 2: Retrain of InceptionV3 Neural Network

This example creates a new NN from the original InceptionV3. 

### Example 3: Capturing frames from video

The example shows how to capture frames from a video. Note that if the video is already downloaded the process is much faster. 

### Example 4: Video Download

A script to download Youtube videos. 

### Example 6: SOSCIP First Steps

Check the .odt document for instructions

### Example 7: SOSCIP Jobs Submission

A code example for running 4GPU cards in parallel in the same job submission
Check the .odt document for instructions.




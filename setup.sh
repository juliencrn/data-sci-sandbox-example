#!/bin/bash

# Setting up a Digital Ocean droplet
# with basic Python and Jupyter notebook stack
# Note: This script is for Ubuntu 18.04 and later
# Note: This script should be run in this root directory

# cloud instance IP address passed as parameter
MASTER_IP=$1

# copy files to the droplet
scp install.sh root@$MASTER_IP:/root/install.sh
chmod 600 mycert.pem
chmod 600 mykey.key
scp -i mycert.pem mykey.key jupyter_notebook_config.py root@$MASTER_IP:/root/.jupyter/

# execute the installation script on the droplet
ssh root@${MASTER_IP} /root/install.sh
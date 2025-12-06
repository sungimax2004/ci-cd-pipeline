#!/bin/bash
set -e

APP_DIR="/home/ec2-user/flask-app"

sudo yum update -y

# Install Python & git
sudo yum install -y python3 git

# Create virtual environment
python3 -m venv $APP_DIR/venv
source $APP_DIR/venv/bin/activate

# Install app dependencies
pip install --upgrade pip
pip install -r $APP_DIR/app/requirements.txt

deactivate

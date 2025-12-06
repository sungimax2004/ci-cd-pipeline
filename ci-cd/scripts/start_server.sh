#!/bin/bash
set -e

APP_DIR="/home/ec2-user/flask-app"
LOG_DIR="/var/log/flask-app"

sudo mkdir -p $LOG_DIR
sudo chown ec2-user:ec2-user $LOG_DIR

cd $APP_DIR

source venv/bin/activate

# Export env vars for the app
export APP_ENV="prod"
export PORT=5000

# Kill any existing gunicorn (just in case)
pkill gunicorn || true

# Start gunicorn in background
nohup gunicorn -b 0.0.0.0:5000 app:app > $LOG_DIR/gunicorn.log 2>&1 &

deactivate

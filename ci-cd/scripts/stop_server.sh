#!/bin/bash
set -e

# Stop gunicorn if running
pkill gunicorn || true

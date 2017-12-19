#!/bin/bash 

# Runs the animal ops pipeline
# N.B. CURRENTLY THESE PATHS NEED TO BE MANUALLY UPDATED FOR PRODUCTION
PREDATOR_LOC="/home/malcolm/Projects/go-predator/"
CLASSIFIER_LOC="/home/malcolm/Projects/linnaeus-job/"
PREDATOR_CMD="$PREDATOR_LOC/main conf.json"
CLASSIFIER_CMD="$CLASSIFIER_LOC/main conf.json"
IMG_WORKING_DIR="/home/malcolm/Projects/go-predator/unclassified"
IMG_SERVING_DIR="/home/malcolm/Projects/dogbot/static/v2"

ulimit -n 100000
eval $PREDATOR_CMD
eval $CLASSIFIER_CMD
mv "$IMG_WORKING_DIR/*" "$IMG_SERVING_DIR/"

# Must be run as root...
systemctl restart dogbot
systemctl restart dogbot-eti

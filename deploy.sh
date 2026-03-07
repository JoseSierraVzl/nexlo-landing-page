#!/bin/bash
set -e

VPS_USER="ubuntu"
VPS_IP="187.124.86.80"
REMOTE_PATH="/opt/landing"

echo "Building..."
yarn build

echo "Uploading dist/ to $VPS_USER@$VPS_IP:$REMOTE_PATH ..."
rsync -avz --delete dist/ "$VPS_USER@$VPS_IP:$REMOTE_PATH/"

echo "Done. Landing deployed to $REMOTE_PATH"

#!/bin/bash

# Ensure the script exits if any command fails
set -e

# Check if UPSTREAM_REPO is set
if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/lazyindu/test1.git /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /LazyPrincess
fi

# Navigate to the cloned repository
cd /LazyPrincess

# Install the required Python packages
pip3 install -U -r requirements.txt

# Print a message indicating the start of the bot
echo "Starting Bot..."

# Run the bot
python3 bot.py
#!/bin/bash
set -e

# Navigate to the workspace
cd "$WORKSPACE" || { echo "Workspace not found!"; exit 1; }

# Build the Docker image
docker build -t my-python-app .

# Run the Docker container
docker run --rm my-python-app

#!/bin/bash
# OpenClaw Deployment Script

set -e  # Exit on any error

echo "Starting OpenClaw deployment..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install npm first."
    exit 1
fi

# Install OpenClaw globally
echo "Installing OpenClaw..."
npm install -g openclaw

# Create workspace directory
echo "Setting up workspace..."
mkdir -p ~/.openclaw/workspace

# Copy configuration
echo "Copying configuration..."
cp configs/default.json ~/.openclaw/config.json

# Initialize the workspace
echo "Initializing workspace..."
cd ~/.openclaw/workspace
openclaw init

echo "OpenClaw deployment completed!"
echo "To start the service, run: openclaw gateway start"
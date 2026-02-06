# OpenClaw Deployment Guide

## Prerequisites

Before deploying OpenClaw to a new workstation, ensure the following prerequisites are met:

- macOS, Linux, or Windows with WSL2
- Node.js (version 18 or higher)
- npm package manager
- Git
- SSH access (for GitHub integration)

## Installation Steps

1. Clone this repository:
   ```bash
   git clone git@github.com:turnball/openclaw-deployments.git
   ```

2. Navigate to the deployment directory:
   ```bash
   cd openclaw-deployments
   ```

3. Run the deployment script:
   ```bash
   ./scripts/deploy.sh
   ```

## Configuration

Each workstation should have its own configuration file in the `workstations/` directory. The deployment script will prompt for workstation-specific settings.

## Updating Existing Deployments

To update an existing OpenClaw installation:

```bash
# Pull latest changes from this repository
git pull origin main

# Run update script
./scripts/update.sh
```

## Troubleshooting

Common issues and solutions:

- **Permission errors**: Ensure you have appropriate file system permissions
- **Node.js not found**: Install Node.js from nodejs.org
- **Network connectivity**: Verify internet connection for npm packages
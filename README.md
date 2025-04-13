# 3.4 Assignment - Flask App Deployment to AWS ECR

## Overview
This project demonstrates automated deployment of a Flask application to AWS Elastic Container Registry (ECR) using GitHub Actions.

## Key Features

### Minimal Secrets Required
- Only requires two essential AWS credentials as secrets:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
- All other configuration values are hardcoded for simplicity and security

### Smart Image Tagging System
- **Primary Tag**: Git commit SHA (`github.sha`) for precise version tracking
- **Secondary Tag**: `latest` for convenience and quick reference

### AWS Best Practices Implementation
- Uses official AWS GitHub Actions:
  - `aws-actions/configure-aws-credentials@v2` for secure authentication
  - `aws-actions/amazon-ecr-login@v1` for ECR registry login
- Automatically detects AWS account ID (no separate secret needed)

### Optimized Workflow Design
- Single efficient job with parallel layer caching
- Clean image URI output for potential downstream operations
- Docker layer caching for faster subsequent builds

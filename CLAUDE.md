# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Docker containerization project for the Finlab financial analysis and quantitative trading library. It provides a pre-configured Python 3.11 environment with machine learning and technical analysis tools specifically designed for financial research.

## Core Technologies

- **Python 3.11** - Base runtime environment
- **Finlab 1.3.0** - Core financial analysis library
- **Machine Learning Stack**: Microsoft's Qlib, XGBoost, LightGBM, CatBoost
- **Technical Analysis**: TA-Lib for technical indicators
- **Docker** - Container platform with multi-platform support (linux/amd64)

## Essential Commands

### Building the Docker Image
```bash
make build
# or manually:
docker build --platform linux/amd64 -t ghcr.io/elct9620/docker-finlab .
```

### Running the Container
```bash
docker run -it ghcr.io/elct9620/docker-finlab
```

## Development Workflow

### Package Management
- Python dependencies are managed in `requirements.txt`
- Version locking is enforced for reproducible builds
- Finlab version is currently pinned to 1.3.0

### CI/CD Pipeline
- GitHub Actions automatically builds and publishes images to GitHub Container Registry
- Dependabot runs weekly to update dependencies
- All builds target linux/amd64 platform

### Making Changes
1. Update `requirements.txt` for new Python dependencies
2. Test locally with `make build`
3. Commit changes using conventional commits format
4. CI/CD will automatically build and publish new images

## Architecture Notes

The project follows a minimal containerization approach:
- Single-stage Docker build for simplicity
- Package installation via pip requirements
- No complex multi-stage builds or optimization layers
- Designed for financial quantitative analysis workflows

## File Structure

- `Dockerfile` - Container configuration
- `requirements.txt` - Python package dependencies with version locks
- `Makefile` - Build automation
- `.github/` - CI/CD workflows and dependency management
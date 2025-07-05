# Docker Finlab

Automated Docker image build for [Finlab](https://www.finlab.tw/) financial analysis and quantitative trading library.

## Overview

This project automatically builds and publishes Docker images containing the Finlab library with all necessary dependencies for financial research and quantitative trading.

## Features

- **Automated builds** triggered by Finlab version updates
- **Multi-platform support** (linux/amd64)
- **Semantic versioning** matching Finlab releases
- **Dependency management** with Dependabot auto-merge
- **GitHub Container Registry** publishing

## Usage

Pull the latest image:
```bash
docker pull ghcr.io/elct9620/docker-finlab:latest
```

Pull a specific version:
```bash
docker pull ghcr.io/elct9620/docker-finlab:v1.3.0
```

Run interactive Python session:
```bash
docker run -it ghcr.io/elct9620/docker-finlab
```

## Included Libraries

- **Finlab** - Core financial analysis library
- **Qlib** - Microsoft's quantitative investment platform (bundled with Finlab)
- **IPython** - Interactive Python shell

## Automation

### Auto-Tagging
- Automatically creates git tags when Finlab version is updated in `requirements.txt`
- Tags follow semantic versioning (e.g., `v1.3.0`)

### Auto-Building
- Docker images are automatically built and pushed on:
  - Main branch commits
  - Version tag pushes
- Images are tagged with both version and `latest`

### Dependency Updates
- Dependabot automatically updates dependencies weekly
- Patch and minor updates are auto-merged
- Major updates require manual review

## Available Tags

- `latest` - Latest stable version
- `v{version}` - Specific Finlab version (e.g., `v1.3.0`)
- `{sha}` - Commit-specific builds

## Development

Build locally:
```bash
make build
```

Or manually:
```bash
docker build --platform linux/amd64 -t ghcr.io/elct9620/docker-finlab .
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
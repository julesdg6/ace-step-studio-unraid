# ACE-Step Unraid Studio UI

This repository provides a lightweight frontend UI container for ACE-Step, designed for Unraid.

## Features
- Static Studio UI frontend
- Configurable backend connection via environment variables
- Optional reverse proxy for same-origin API access

## Environment Variables
- ACE_STEP_PROTOCOL (default: http)
- ACE_STEP_HOST (default: 192.168.1.64)
- ACE_STEP_PORT (default: 7860)
- ACE_STEP_BASE_PATH (optional)

## Build

```bash
docker build -t ace-step-unraid-ui .
```

## Run

```bash
docker run -p 8080:8080 \
  -e ACE_STEP_HOST=192.168.1.64 \
  ace-step-unraid-ui
```

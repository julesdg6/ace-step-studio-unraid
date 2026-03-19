# ACE-Step Unraid Studio UI

This repository provides a lightweight frontend UI container for ACE-Step, designed for Unraid.

[![Build and Push Docker Image](https://github.com/julesdg6/ace-step-studio-unraid/actions/workflows/docker-build.yml/badge.svg)](https://github.com/julesdg6/ace-step-studio-unraid/actions/workflows/docker-build.yml)

## Features
- Static Studio UI frontend
- Configurable backend connection via environment variables
- Optional reverse proxy for same-origin API access

## Docker Image

Pre-built images are published automatically to GitHub Container Registry on every push to `main` and for every version tag.

```
ghcr.io/julesdg6/ace-step-studio-unraid:latest
```

## Environment Variables
| Variable | Default | Description |
|---|---|---|
| `ACE_STEP_PROTOCOL` | `http` | Protocol used to reach the ACE-Step backend (`http` or `https`) |
| `ACE_STEP_HOST` | `192.168.1.64` | IP address or hostname of the ACE-Step backend |
| `ACE_STEP_PORT` | `7860` | Port the ACE-Step backend is listening on |
| `ACE_STEP_BASE_PATH` | *(empty)* | Optional base path if ACE-Step is hosted under a sub-path |

## Deploying on Unraid (Unraid 7)

> **Prerequisite:** You must have **SpaceInvaderOne's ACE-Step** container installed first.  
> Search for **ACE-Step** in the **Apps** (Community Apps) catalogue and install it before continuing.

### Option 1 — Add the template via URL (recommended)

1. In Unraid, go to **Apps** and click the **Settings** (gear icon) near the top-right.
2. Under **Template Repositories**, add the following URL and click **Save**:
   ```
   https://raw.githubusercontent.com/julesdg6/ace-step-studio-unraid/main/unraid/Ace-Step-Studio.xml
   ```
3. Return to the **Apps** page and search for **ACE-Step-Studio**.
4. Click **Install**, fill in your ACE-Step backend details (`ACE_STEP_HOST`, `ACE_STEP_PORT`, etc.) and click **Apply**.

### Option 2 — Add the template manually

1. In Unraid, go to **Docker** → **Add Container**.
2. In the **Template URL** field paste:
   ```
   https://raw.githubusercontent.com/julesdg6/ace-step-studio-unraid/main/unraid/Ace-Step-Studio.xml
   ```
3. Click the load/refresh icon next to the field to populate the form, adjust the environment variables to match your setup, and click **Apply**.

Once the container is running, open the Web UI at `http://<unraid-ip>:8088/studio.html`.

## Build Locally

```bash
docker build -t ace-step-unraid-ui .
```

## Run Locally

```bash
docker run -p 8080:8080 \
  -e ACE_STEP_HOST=192.168.1.64 \
  ace-step-unraid-ui
```

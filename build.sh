#!/usr/bin/env bash

set -eEuo pipefail

docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t mattipaksula/uptime-kuma:3s \
  --target release \
  -f docker/dockerfile . \
  --push

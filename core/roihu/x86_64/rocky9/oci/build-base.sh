#!/usr/bin/env bash
podman build -f base.Dockerfile -t base:v2026_03 --squash-all /

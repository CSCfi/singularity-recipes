#!/usr/bin/env bash
podman build -f core-cpu-base.Dockerfile -t core-cpu-base:v2026_03 --squash-all /

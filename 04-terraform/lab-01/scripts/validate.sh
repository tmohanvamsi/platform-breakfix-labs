#!/usr/bin/env bash
# Post-deploy validation for the rendered application config.
# Usage: validate.sh <path-to-rendered-config>
set -euo pipefail

config_file="${1:?usage: validate.sh <config-file>}"

if [[ ! -f "$config_file" ]]; then
  echo "FAIL: config file not found: $config_file"
  exit 1
fi

replicas="$(grep -E '^replicas:' "$config_file" | awk '{print $2}')"

if [[ -z "$replicas" ]]; then
  echo "FAIL: no replicas value found in $config_file"
  exit 1
fi

if (( replicas < 1 )); then
  echo "FAIL: replicas must be at least 1, got $replicas"
  exit 1
fi

echo "OK: $config_file has $replicas replica(s) configured"

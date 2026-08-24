#!/usr/bin/env bash
set -u

required_tools=(docker kubectl kind terraform helm git go)
failed=0

printf '%-12s %s\n' "TOOL" "RESULT"
printf '%-12s %s\n' "------------" "----------------------------------------"

for tool in "${required_tools[@]}"; do
  if command -v "$tool" >/dev/null 2>&1; then
    version="$($tool version 2>&1 | head -n 1)"
    printf '%-12s %s\n' "$tool" "$version"
  else
    printf '%-12s %s\n' "$tool" "MISSING"
    failed=1
  fi
done

if ! docker info >/dev/null 2>&1; then
  printf '\nDocker CLI is installed, but the Docker engine is unavailable.\n'
  failed=1
else
  printf '\nDocker engine: %s\n' "$(docker info --format '{{.ServerVersion}}')"
fi

exit "$failed"


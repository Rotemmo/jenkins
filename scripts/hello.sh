#!/usr/bin/env bash
set -euo pipefail

NAME=$1
echo "Date: $(date)"
echo "Commit: $(git rev-parse HEAD || echo 'N/A')"
echo "Hello, $NAME"

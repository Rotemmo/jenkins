#!/usr/bin/env bash
#handle error:
set -euo pipefail

#NAME parameter (we put in jenkins file 'world' as a default value)
NAME=${1:-world}

# Print current date
echo "Current date: $(date)"

# Print Git commit SHA, or N/A if not available
echo "Git commit SHA: $(git rev-parse HEAD || echo 'N/A')"

# Print Git commit SHA, or N/A if not available
echo "Hello, $NAME"

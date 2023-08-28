#!/usr/bin/env bash
set -eu

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

. "${SCRIPT_DIR}/config.sh"

docker push "${REPOSITORY}:${TAG}"

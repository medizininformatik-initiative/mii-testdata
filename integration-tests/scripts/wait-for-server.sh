#!/usr/bin/env bash
# Wait for a FHIR server to become healthy
set -euo pipefail

SERVER_NAME="${1:?Usage: wait-for-server.sh <server-name> <base-url> [max-seconds]}"
BASE_URL="${2:?Usage: wait-for-server.sh <server-name> <base-url> [max-seconds]}"
MAX_WAIT="${3:-180}"

echo "Waiting for ${SERVER_NAME} at ${BASE_URL} (max ${MAX_WAIT}s)..."

elapsed=0
interval=5

while [ "$elapsed" -lt "$MAX_WAIT" ]; do
  if curl -sf "${BASE_URL}/metadata" -o /dev/null 2>/dev/null; then
    echo "${SERVER_NAME} is ready after ${elapsed}s"
    exit 0
  fi
  sleep "$interval"
  elapsed=$((elapsed + interval))
  echo "  ...waiting (${elapsed}s/${MAX_WAIT}s)"
done

echo "ERROR: ${SERVER_NAME} did not become ready within ${MAX_WAIT}s"
exit 1

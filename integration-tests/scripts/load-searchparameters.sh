#!/usr/bin/env bash
# Load SearchParameter resources into a FHIR server
# Loads meta SPs first, then module-specific SPs
set -euo pipefail

BASE_URL="${1:?Usage: load-searchparameters.sh <fhir-base-url> <sp-dir>}"
SP_DIR="${2:?Usage: load-searchparameters.sh <fhir-base-url> <sp-dir>}"

echo "Loading SearchParameters into ${BASE_URL}..."

load_sp_files() {
  local dir="$1"
  local label="$2"
  local count=0
  local errors=0

  if [ ! -d "$dir" ] || [ -z "$(ls -A "$dir" 2>/dev/null)" ]; then
    echo "  ${label}: no files found in ${dir}"
    return 0
  fi

  for sp_file in "${dir}"/SearchParameter-*.json; do
    [ -f "$sp_file" ] || continue

    sp_id=$(jq -r '.id' "$sp_file")
    sp_code=$(jq -r '.code' "$sp_file")

    http_code=$(curl -sf -o /dev/null -w "%{http_code}" \
      -X PUT \
      -H "Content-Type: application/fhir+json" \
      -d @"$sp_file" \
      "${BASE_URL}/SearchParameter/${sp_id}" 2>/dev/null || echo "000")

    if [ "$http_code" -ge 200 ] && [ "$http_code" -lt 300 ]; then
      count=$((count + 1))
    else
      echo "    WARN: Failed to load SP '${sp_code}' (${sp_id}): HTTP ${http_code}"
      errors=$((errors + 1))
    fi
  done

  echo "  ${label}: ${count} loaded, ${errors} errors"
}

# Load meta SPs first (they are referenced by module SPs)
load_sp_files "${SP_DIR}/meta" "meta"

# Then module-specific SPs
load_sp_files "${SP_DIR}/modules" "modules"

echo "SearchParameter loading complete."

#!/usr/bin/env bash
# POST all Bundle resources as transactions against a FHIR server.
# Usage: load-bundles.sh <bundles-dir> [fhir-base-url]
#   bundles-dir    directory containing Bundle-*.json files
#   fhir-base-url  defaults to http://localhost:8080/fhir
set -euo pipefail

BUNDLES_DIR="${1:?Usage: load-bundles.sh <bundles-dir> [fhir-base-url]}"
BASE_URL="${2:-http://localhost:8080/fhir}"

loaded=0
errors=0

load_bundle() {
  local bundle_file="$1"
  local bundle_name
  bundle_name=$(basename "$bundle_file" .json)

  response=$(curl -sf -w "\n%{http_code}" \
    -X POST \
    -H "Content-Type: application/fhir+json" \
    -d @"$bundle_file" \
    "${BASE_URL}" 2>&1 || true)

  http_code=$(echo "$response" | tail -n1)
  body=$(echo "$response" | sed '$d')

  if [ "$http_code" -ge 200 ] && [ "$http_code" -lt 300 ]; then
    echo "  OK: ${bundle_name}"
    loaded=$((loaded + 1))
  else
    echo "  FAIL: ${bundle_name} (HTTP ${http_code})"
    echo "$body" | jq -r '.issue[]?.diagnostics // empty' 2>/dev/null | head -5
    errors=$((errors + 1))
  fi
}

for bundle_file in "${BUNDLES_DIR}"/Bundle-*.json; do
  [ -f "$bundle_file" ] || continue
  load_bundle "$bundle_file"
done

echo ""
echo "Bundle loading complete: ${loaded} loaded, ${errors} errors"
[ "$errors" -eq 0 ] || exit 1

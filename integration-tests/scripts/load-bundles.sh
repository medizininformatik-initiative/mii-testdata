#!/usr/bin/env bash
# Load Transaction Bundles into a FHIR server
# Sorted: pat-1..pat-11 first (shared resources), then onkologie-1, then others
set -euo pipefail

BASE_URL="${1:?Usage: load-bundles.sh <fhir-base-url> <bundles-dir>}"
BUNDLES_DIR="${2:?Usage: load-bundles.sh <fhir-base-url> <bundles-dir>}"

echo "Loading Transaction Bundles into ${BASE_URL}..."

loaded=0
errors=0

load_bundle() {
  local bundle_file="$1"
  local bundle_name
  bundle_name=$(basename "$bundle_file" .json)

  # Post as transaction bundle
  response=$(curl -sf -w "\n%{http_code}" \
    -X POST \
    -H "Content-Type: application/fhir+json" \
    -d @"$bundle_file" \
    "${BASE_URL}/" 2>&1 || true)

  http_code=$(echo "$response" | tail -n1)
  body=$(echo "$response" | sed '$d')

  if [ "$http_code" -ge 200 ] && [ "$http_code" -lt 300 ]; then
    echo "  OK: ${bundle_name}"
    loaded=$((loaded + 1))
  else
    echo "  FAIL: ${bundle_name} (HTTP ${http_code})"
    # Show diagnostics if available
    echo "$body" | jq -r '.issue[]?.diagnostics // empty' 2>/dev/null | head -5
    errors=$((errors + 1))
  fi
}

# Load patient bundles in order (pat-1 contains shared Organization/Practitioners)
for i in $(seq 1 20); do
  bundle_file="${BUNDLES_DIR}/Bundle-mii-exa-test-data-bundle-pat-${i}.json"
  if [ -f "$bundle_file" ]; then
    load_bundle "$bundle_file"
  fi
done

# Load onkologie bundles
for bundle_file in "${BUNDLES_DIR}"/Bundle-mii-exa-test-data-bundle-onkologie-*.json; do
  [ -f "$bundle_file" ] || continue
  load_bundle "$bundle_file"
done

# Load any remaining bundles (ICU, etc.)
for bundle_file in "${BUNDLES_DIR}"/Bundle-*.json; do
  [ -f "$bundle_file" ] || continue
  # Skip already-loaded patient and onkologie bundles
  case "$(basename "$bundle_file")" in
    Bundle-mii-exa-test-data-bundle-pat-*.json) continue ;;
    Bundle-mii-exa-test-data-bundle-onkologie-*.json) continue ;;
  esac
  load_bundle "$bundle_file"
done

echo ""
echo "Bundle loading complete: ${loaded} loaded, ${errors} errors"

if [ "$errors" -gt 0 ]; then
  exit 1
fi

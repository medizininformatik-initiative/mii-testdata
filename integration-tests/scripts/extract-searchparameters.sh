#!/usr/bin/env bash
# Extract SearchParameter JSON files from ~/.fhir package cache
# based on fhirpkg.lock.json dependencies
set -euo pipefail

LOCK_FILE="${1:?Usage: extract-searchparameters.sh <fhirpkg.lock.json> <output-dir>}"
OUTPUT_DIR="${2:?Usage: extract-searchparameters.sh <fhirpkg.lock.json> <output-dir>}"
FHIR_CACHE="${FHIR_CACHE_DIR:-$HOME/.fhir/packages}"

mkdir -p "${OUTPUT_DIR}/meta" "${OUTPUT_DIR}/modules"

echo "Extracting SearchParameters from FHIR package cache..."
echo "Lock file: ${LOCK_FILE}"
echo "Cache dir: ${FHIR_CACHE}"

# Packages that contain SearchParameters
SP_PACKAGES=(
  "de.medizininformatikinitiative.kerndatensatz.meta"
  "de.medizininformatikinitiative.kerndatensatz.onkologie"
  "de.medizininformatikinitiative.kerndatensatz.icu"
  "de.medizininformatikinitiative.kerndatensatz.molgen"
  "de.medizininformatikinitiative.kerndatensatz.pros"
  "de.medizininformatikinitiative.kerndatensatz.studie"
)

total=0

for pkg in "${SP_PACKAGES[@]}"; do
  # Get version from lock file
  version=$(jq -r --arg pkg "$pkg" '.dependencies[$pkg] // empty' "$LOCK_FILE")
  if [ -z "$version" ]; then
    echo "  SKIP: ${pkg} not in lock file"
    continue
  fi

  pkg_dir="${FHIR_CACHE}/${pkg}#${version}/package"
  if [ ! -d "$pkg_dir" ]; then
    echo "  WARN: Package directory not found: ${pkg_dir}"
    continue
  fi

  # Determine output subdirectory (meta vs modules)
  if [[ "$pkg" == *".meta" ]]; then
    dest="${OUTPUT_DIR}/meta"
  else
    dest="${OUTPUT_DIR}/modules"
  fi

  count=0
  for sp_file in "${pkg_dir}"/SearchParameter-*.json; do
    [ -f "$sp_file" ] || continue
    cp "$sp_file" "$dest/"
    count=$((count + 1))
  done

  echo "  ${pkg}#${version}: ${count} SearchParameters"
  total=$((total + count))
done

echo "Total: ${total} SearchParameters extracted to ${OUTPUT_DIR}"

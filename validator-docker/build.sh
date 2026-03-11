#!/bin/bash
# Build the MII FHIR Validator Docker image with pre-loaded KDS packages
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOCK_FILE="${SCRIPT_DIR}/../kds-testdata/fhirpkg.lock.json"
FHIR_CACHE="${HOME}/.fhir/packages"
TARGET_DIR="${SCRIPT_DIR}/packages"
IMAGE_TAG="${1:-mii-fhir-validator:0.1.0}"

echo "=== MII FHIR Validator Docker Build ==="
echo "Lock file: ${LOCK_FILE}"
echo "FHIR cache: ${FHIR_CACHE}"
echo "Image tag: ${IMAGE_TAG}"
echo ""

# Clean and recreate target
rm -rf "${TARGET_DIR}"
mkdir -p "${TARGET_DIR}"

# Copy advisor.json
cp "${SCRIPT_DIR}/../kds-testdata/advisor.json" "${SCRIPT_DIR}/advisor.json"

# Step 1: Inflate all packages (generate snapshots) before copying
echo "Inflating packages (generating snapshots)..."
jq -r '.dependencies | to_entries[] | "\(.key)#\(.value)"' "${LOCK_FILE}" | while read -r pkg; do
    pkg_dir="${FHIR_CACHE}/${pkg}"
    if [ -d "${pkg_dir}" ]; then
        fhir inflate --package "${pkg}" 2>/dev/null && echo "  ✓ inflated ${pkg}" || echo "  ~ ${pkg} (already inflated or not a profile package)"
    fi
done

# Step 2: Copy dependencies from lock file
echo ""
echo "Copying packages from local FHIR cache..."
MISSING=()
jq -r '.dependencies | to_entries[] | "\(.key)#\(.value)"' "${LOCK_FILE}" | while read -r pkg; do
    pkg_dir="${FHIR_CACHE}/${pkg}"
    if [ -d "${pkg_dir}" ]; then
        echo "  ✓ ${pkg}"
        cp -r "${pkg_dir}" "${TARGET_DIR}/"
    else
        echo "  ✗ ${pkg} (MISSING from local cache!)"
    fi
done

# Step 3: Also copy newer versions referenced in sushi-config but not yet in lock file
for extra_pkg in \
    "de.medizininformatikinitiative.kerndatensatz.onkologie#2026.0.1" \
    "de.medizininformatikinitiative.kerndatensatz.seltene#2026.0.0" \
    "de.medizininformatikinitiative.kerndatensatz.mtb#2026.0.0" \
    "de.medizininformatikinitiative.kerndatensatz.consent#2026.0.1-rc-1" \
    "de.medizininformatikinitiative.kerndatensatz.icu#2026.0.1" \
    "de.medizininformatikinitiative.kerndatensatz.laborbefund#2026.0.1" \
    "de.medizininformatikinitiative.kerndatensatz.medikation#2026.0.1" \
    "de.medizininformatikinitiative.kerndatensatz.biobank#2026.0.1" \
    "de.medizininformatikinitiative.kerndatensatz.studie#2026.0.2" \
    "de.medizininformatikinitiative.kerndatensatz.pros#2026.0.1"; do
    pkg_dir="${FHIR_CACHE}/${extra_pkg}"
    target_basename="$(basename "${pkg_dir}")"
    if [ -d "${pkg_dir}" ] && [ ! -d "${TARGET_DIR}/${target_basename}" ]; then
        fhir inflate --package "${extra_pkg}" 2>/dev/null || true
        echo "  + ${extra_pkg}"
        cp -r "${pkg_dir}" "${TARGET_DIR}/"
    fi
done

# Step 4: Verify snapshots exist
echo ""
echo "Verifying snapshots..."
MISSING_SNAPSHOTS=0
for pkg_path in "${TARGET_DIR}"/de.medizininformatikinitiative.*/package; do
    pkg_name=$(basename "$(dirname "$pkg_path")")
    sd_count=$(find "$pkg_path" -name "StructureDefinition-*.json" 2>/dev/null | wc -l | tr -d ' ')
    if [ "$sd_count" -gt 0 ]; then
        no_snapshot=$(find "$pkg_path" -name "StructureDefinition-*.json" -exec python3 -c "
import json, sys
with open(sys.argv[1]) as f:
    sd = json.load(f)
if sd.get('type') not in ['Extension', 'Questionnaire'] and 'snapshot' not in sd:
    print(sys.argv[1])
" {} \; 2>/dev/null | wc -l | tr -d ' ')
        if [ "$no_snapshot" -gt 0 ]; then
            echo "  ⚠ ${pkg_name}: ${no_snapshot}/${sd_count} profiles WITHOUT snapshot"
            MISSING_SNAPSHOTS=$((MISSING_SNAPSHOTS + no_snapshot))
        else
            echo "  ✓ ${pkg_name}: ${sd_count} profiles (all with snapshots)"
        fi
    fi
done

# Show total size
echo ""
TOTAL_SIZE=$(du -sh "${TARGET_DIR}" | cut -f1)
PKG_COUNT=$(ls -d "${TARGET_DIR}"/*/ 2>/dev/null | wc -l | tr -d ' ')
echo "Total: ${PKG_COUNT} packages, ${TOTAL_SIZE}"

if [ "$MISSING_SNAPSHOTS" -gt 0 ]; then
    echo "⚠ WARNING: ${MISSING_SNAPSHOTS} profiles are missing snapshots!"
    echo "  Run 'fhir inflate --package <pkg>' for affected packages first."
fi

echo ""

# Build Docker image
echo "Building Docker image: ${IMAGE_TAG}..."
docker build -t "${IMAGE_TAG}" "${SCRIPT_DIR}"

# Cleanup copied packages (they're in the image now)
rm -rf "${TARGET_DIR}"
rm -f "${SCRIPT_DIR}/advisor.json"

echo ""
echo "=== Done ==="
echo "Image: ${IMAGE_TAG}"
echo "Size:  $(docker image inspect "${IMAGE_TAG}" --format='{{.Size}}' | numfmt --to=iec 2>/dev/null || docker image inspect "${IMAGE_TAG}" --format='{{.Size}}')"
echo ""
echo "Usage:"
echo "  # Validate local resources (no TX server):"
echo "  docker run --rm -v \$(pwd)/fsh-generated/resources:/data ${IMAGE_TAG} /data/*.json -tx n/a"
echo ""
echo "  # With TX server:"
echo "  docker run --rm -v \$(pwd)/fsh-generated/resources:/data ${IMAGE_TAG} /data/*.json -tx https://tx.fhir.org"

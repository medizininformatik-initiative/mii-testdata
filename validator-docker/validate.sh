#!/bin/bash
# MII KDS FHIR Validator entrypoint
# Usage:
#   Single files:  validate.sh file1.json file2.json [validator-flags]
#   Directory:     validate.sh --batch /data [--batch-size 20] [validator-flags]
set -euo pipefail

# Build -ig flags from all installed packages
IG_FLAGS=""
for pkg_dir in /root/.fhir/packages/*/; do
    pkg_name=$(basename "$pkg_dir")
    if [[ "$pkg_name" == *"#"* ]]; then
        IG_FLAGS="$IG_FLAGS -ig $pkg_name"
    fi
done

BASE_FLAGS="-version 4.0 -advisor-file /validator/advisor.json -show-message-ids $IG_FLAGS"

# Check for batch mode
if [[ "${1:-}" == "--batch" ]]; then
    shift
    DATA_DIR="${1:?Usage: --batch /data/dir [--batch-size N] [extra-flags]}"
    shift

    BATCH_SIZE=20
    if [[ "${1:-}" == "--batch-size" ]]; then
        shift
        BATCH_SIZE="${1:?--batch-size requires a number}"
        shift
    fi

    EXTRA_FLAGS="$*"

    FILES=($(find "$DATA_DIR" -maxdepth 1 -name "*.json" | sort))
    TOTAL=${#FILES[@]}
    BATCHES=$(( (TOTAL + BATCH_SIZE - 1) / BATCH_SIZE ))

    echo "=== MII KDS FHIR Validator - Batch Mode ==="
    echo "Directory: $DATA_DIR"
    echo "Files:     $TOTAL"
    echo "Batch size: $BATCH_SIZE"
    echo "Batches:   $BATCHES"
    echo ""

    TOTAL_ERRORS=0
    TOTAL_WARNINGS=0
    FAILED_FILES=()

    for ((i=0; i<TOTAL; i+=BATCH_SIZE)); do
        BATCH_NUM=$(( i / BATCH_SIZE + 1 ))
        BATCH_FILES=("${FILES[@]:i:BATCH_SIZE}")
        BATCH_COUNT=${#BATCH_FILES[@]}

        echo "--- Batch $BATCH_NUM/$BATCHES ($BATCH_COUNT files) ---"

        OUTPUT=$(java -Xmx4g -jar /validator/validator_cli.jar \
            $BASE_FLAGS \
            $EXTRA_FLAGS \
            "${BATCH_FILES[@]}" 2>&1) || true

        # Extract per-file results
        echo "$OUTPUT" | grep -E "Validate |FAILURE|Success" || true

        # Count errors and warnings from this batch
        BATCH_ERRORS=$(echo "$OUTPUT" | grep -oP '\d+ error' | head -1 | grep -oP '\d+' || echo "0")
        BATCH_WARNINGS=$(echo "$OUTPUT" | grep -oP '\d+ warning' | head -1 | grep -oP '\d+' || echo "0")
        TOTAL_ERRORS=$((TOTAL_ERRORS + BATCH_ERRORS))
        TOTAL_WARNINGS=$((TOTAL_WARNINGS + BATCH_WARNINGS))

        # Collect error details
        echo "$OUTPUT" | grep -E "^\s*(Error|Warning) @" || true

        echo ""
    done

    echo "==========================================="
    echo "TOTAL: $TOTAL files validated"
    echo "       $TOTAL_ERRORS errors, $TOTAL_WARNINGS warnings"
    echo "==========================================="
else
    # Single/direct mode - pass everything through
    exec java -Xmx4g -jar /validator/validator_cli.jar \
        $BASE_FLAGS \
        "$@"
fi

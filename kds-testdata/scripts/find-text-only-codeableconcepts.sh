#!/usr/bin/env bash
# Find text-only CodeableConcepts in generated test-data Bundles.
#
# A "text-only CodeableConcept" is an object that has a string `.text`, no
# `.coding`, and no other content keys (keys are a subset of text/id/extension)
# -> i.e. a coded element that carries only free text and lacks a proper coding.
#
# Annotation-typed fields (note, progress, payment) are structurally identical
# but are NOT CodeableConcepts, so they are excluded.
#
# Usage:
#   scripts/find-text-only-codeableconcepts.sh [RESOURCE_DIR]
# Default RESOURCE_DIR: kds-testdata/fsh-generated/resources (relative to repo root)
#
# Output: a summary (by field, by bundle) followed by one line per hit:
#   <bundle>  <ResourceType>.<path>  "<text>"
set -euo pipefail

DIR="${1:-$(cd "$(dirname "$0")/.." && pwd)/fsh-generated/resources}"
[ -d "$DIR" ] || { echo "resource dir not found: $DIR" >&2; exit 1; }

read -r -d '' FILTER <<'JQ' || true
def ANNOTATION_FIELDS: ["note","progress","payment"];
[ (.entry[]?.resource // .) as $r          # works on Bundles and bare resources
  | ($r.resourceType) as $rt
  | ($r | paths(objects)) as $p
  | ($r | getpath($p)) as $v
  | select($v|type=="object")
  | select($v|has("text") and (.text|type=="string"))
  | select($v|has("coding")|not)
  | select( ($v|keys_unsorted) - ["text","id","extension"] | length == 0 )
  | ($p | map(select(type=="string")) | last) as $field
  | select( ANNOTATION_FIELDS | index($field) | not )
  | { rt: $rt,
      field: $field,
      path: ($p | map(if type=="number" then "[]" else . end) | join(".")),
      text: $v.text }
]
JQ

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT
for f in "$DIR"/Bundle-*.json; do
  [ -e "$f" ] || continue
  base="$(basename "$f" | sed -E 's/^Bundle-mii-exa-test-data-bundle-//; s/\.json$//')"
  jq -c -f <(printf '%s' "$FILTER") "$f" 2>/dev/null \
    | jq -c --arg file "$base" '.[] + {file:$file}'
done | jq -s '.' > "$TMP"

echo "=== total text-only CodeableConcepts: $(jq 'length' "$TMP") ==="
echo "--- by field ---";  jq -r 'group_by(.field)[]  | "\(length)\t\(.[0].field)"' "$TMP" | sort -rn
echo "--- by bundle ---"; jq -r 'group_by(.file)[]   | "\(length)\t\(.[0].file)"'  "$TMP" | sort -rn
echo "--- hits ---"
jq -r '.[] | "\(.file)\t\(.rt).\(.path|sub("entry.\\[\\].resource.";""))\t\"\(.text)\""' "$TMP" \
  | sort | column -t -s$'\t'

#!/usr/bin/env bash
# check-servers.sh — Laedt alle Testdaten-Bundles in Blaze UND HAPI und
# vergleicht das Ergebnis.
#
# Warum zwei Server: Sie sind unterschiedlich streng. Blaze hat alle 29
# Bundles akzeptiert, HAPI weist Bundle-...-bundle-pat-1 mit HTTP 400 zurueck —
# denselben Datenstand. Ein Ladetest gegen nur einen Server haette das nie
# gezeigt. Genau solche Abweichungen sind der Zweck von Testdaten.
#
#   ./scripts/check-servers.sh                       # baut nichts, nimmt fsh-generated
#   ./scripts/check-servers.sh <resources-dir>
#   KEEP=1 ./scripts/check-servers.sh                # Server danach laufen lassen
#
# Exit 1, sobald ein Bundle auf mindestens einem Server scheitert.
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
RES="${1:-$ROOT/kds-testdata/fsh-generated/resources}"
COMPOSE="$ROOT/scripts/servers-smoke.yml"
BLAZE="http://localhost:8380/fhir"
HAPI="http://localhost:8382/fhir"
KEEP="${KEEP:-0}"

cleanup() {
  if [ "$KEEP" = "1" ]; then
    echo "Server bleiben oben: Blaze $BLAZE · HAPI $HAPI"
  else
    docker compose -f "$COMPOSE" down -v >/dev/null 2>&1
  fi
}
trap cleanup EXIT

[ -d "$RES" ] || { echo "Verzeichnis nicht gefunden: $RES" >&2; exit 2; }

echo "== Server starten =="
docker compose -f "$COMPOSE" up -d >/dev/null 2>&1 || {
  echo "docker compose up fehlgeschlagen" >&2; exit 2; }

# Beide Server pollen. HAPI braucht deutlich laenger (Spring-Boot + Schema).
for spec in "Blaze:$BLAZE/metadata:60" "HAPI:$HAPI/metadata:180"; do
  name="${spec%%:*}"; rest="${spec#*:}"; url="${rest%:*}"; max="${rest##*:}"
  printf '   %-6s ' "$name"
  for i in $(seq 1 "$max"); do
    if curl -sf -o /dev/null --max-time 3 "$url"; then echo "bereit (${i}s)"; break; fi
    [ "$i" = "$max" ] && { echo "NICHT ERREICHBAR nach ${max}s"; exit 2; }
    sleep 1
  done
done

# Ein Bundle laden. transaction/batch gehoeren an den Base-Endpoint, alle
# anderen Typen (document, collection) sind gewoehnliche Ressourcen.
post_bundle() {
  local file="$1" base="$2" type target
  type="$(jq -r '.type // empty' "$file")"
  case "$type" in
    transaction|batch) target="$base" ;;
    *)                 target="$base/Bundle" ;;
  esac
  curl -s -o /tmp/cs-body.$$ -w '%{http_code}' -X POST \
    -H 'Content-Type: application/fhir+json' \
    --max-time 300 -d @"$file" "$target"
}

diagnostics() {
  jq -r '[.issue[]? | "\(.severity // "?"): \(.diagnostics // .details.text // "")"] | .[0:3][]' \
    /tmp/cs-body.$$ 2>/dev/null | sed 's/^/          /' | cut -c1-160
}

echo
printf '== Bundles laden ==\n%-52s %-10s %s\n' "BUNDLE" "BLAZE" "HAPI"
fails=0; diffs=0; n=0
declare -a FAILED
for f in "$RES"/Bundle-*.json; do
  [ -f "$f" ] || continue
  n=$((n+1))
  name="$(basename "$f" .json)"
  b=$(post_bundle "$f" "$BLAZE"); b_body=$(cat /tmp/cs-body.$$ 2>/dev/null)
  bok=0; [ "$b" -ge 200 ] 2>/dev/null && [ "$b" -lt 300 ] && bok=1
  [ "$bok" = 0 ] && { b_diag="$(diagnostics)"; }
  h=$(post_bundle "$f" "$HAPI")
  hok=0; [ "$h" -ge 200 ] 2>/dev/null && [ "$h" -lt 300 ] && hok=1
  [ "$hok" = 0 ] && { h_diag="$(diagnostics)"; }

  mark() { [ "$1" = 1 ] && printf 'OK' || printf 'FAIL %s' "$2"; }
  printf '%-52s %-10s %s' "${name#Bundle-mii-exa-test-data-}" \
    "$(mark "$bok" "$b")" "$(mark "$hok" "$h")"
  [ "$bok" != "$hok" ] && { printf '   <-- ABWEICHUNG'; diffs=$((diffs+1)); }
  printf '\n'
  if [ "$bok" = 0 ] || [ "$hok" = 0 ]; then
    fails=$((fails+1)); FAILED+=("$name")
    [ "$bok" = 0 ] && { echo "       Blaze:"; echo "$b_diag"; }
    [ "$hok" = 0 ] && { echo "       HAPI:";  echo "$h_diag"; }
  fi
done
rm -f /tmp/cs-body.$$

echo
echo "== Ergebnis =="
echo "   $n Bundles, $fails mit Fehler, $diffs Abweichungen zwischen den Servern"
if [ "$diffs" -gt 0 ]; then
  echo "   Eine Abweichung heisst: ein Server akzeptiert, der andere nicht —"
  echo "   fast immer ein echter Datenfehler, den der tolerantere durchwinkt."
fi
[ "$fails" -eq 0 ] || { printf '   betroffen: %s\n' "${FAILED[*]}"; exit 1; }

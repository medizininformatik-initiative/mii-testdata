#!/usr/bin/env python3
"""compare-advisor-runs.py — Kontrolle, was advisor.json wegfiltert.

Nimmt zwei validator_cli-Ausgaben (OperationOutcome-Bundles, via -output):
  1. UNGEFILTERT (ohne -advisor-file)
  2. GEFILTERT   (mit  -advisor-file kds-testdata/advisor.json)
und druckt einen Markdown-Report: Was unterdrückt der Advisor gerade wirklich —
je Message-ID, mit Fundstellen. Meldet auch die Anomalie "nur im gefilterten
Lauf vorhanden" (dürfte nie vorkommen).

Usage: compare-advisor-runs.py <unfiltered.json> <filtered.json>
Exit immer 0 — der Report ist das Ergebnis, kein Gate.
"""
import json, sys, collections, os

def load(path):
    d = json.load(open(path))
    out = collections.Counter()
    locs = collections.defaultdict(list)
    sev = collections.Counter()
    for e in d.get("entry", []):
        oo = e.get("resource", e)
        f = os.path.basename(next((x.get("valueString") for x in oo.get("extension", [])
                                   if x.get("url", "").endswith("file")), "?"))
        for iss in oo.get("issue", []):
            s = iss.get("severity")
            sev[s] += 1
            if s not in ("error", "fatal"):
                continue
            mid = str(next((x.get("valueCode") or x.get("valueString")
                            for x in iss.get("extension", [])
                            if x.get("url", "").endswith("message-id")), "(ohne id)"))
            out[mid] += 1
            if len(locs[mid]) < 5:
                locs[mid].append(f"{f} · {(iss.get('expression') or ['?'])[0][:80]}")
    return out, locs, sev

def main():
    unf, unf_locs, unf_sev = load(sys.argv[1])
    fil, fil_locs, fil_sev = load(sys.argv[2])
    print("## Advisor-Kontrolle: gefiltert vs. ungefiltert\n")
    print(f"| | ungefiltert | mit advisor.json | vom Advisor unterdrückt |")
    print(f"|---|---|---|---|")
    print(f"| Errors | {sum(unf.values())} | {sum(fil.values())} | **{sum(unf.values())-sum(fil.values())}** |")
    print(f"| Warnings | {unf_sev.get('warning',0)} | {fil_sev.get('warning',0)} | {unf_sev.get('warning',0)-fil_sev.get('warning',0)} |")
    print()
    removed = {mid: unf[mid] - fil.get(mid, 0) for mid in unf if unf[mid] > fil.get(mid, 0)}
    if removed:
        print("### Vom Advisor unterdrückte Fehler-Cluster\n")
        print("| Message-ID | unterdrückt | Beispiel-Fundstellen |")
        print("|---|---|---|")
        for mid, n in sorted(removed.items(), key=lambda kv: -kv[1]):
            ex = "<br>".join(unf_locs[mid][:3]).replace("|", "\\|")
            print(f"| `{mid}` | {n} | {ex} |")
    else:
        print("_Der Advisor unterdrückt aktuell keine Fehler._")
    ghost = {mid: fil[mid] - unf.get(mid, 0) for mid in fil if fil[mid] > unf.get(mid, 0)}
    if ghost:
        print("\n### ⚠️ Anomalie: nur im GEFILTERTEN Lauf vorhanden (bitte prüfen)\n")
        for mid, n in ghost.items():
            print(f"- `{mid}`: +{n}")

if __name__ == "__main__":
    main()

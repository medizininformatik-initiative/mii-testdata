#!/usr/bin/env python3
"""advisor-rules.py — Was genau wuerde eine Advisor-Regel unterdruecken?

`advisor.json` kennt nur `MessageId@FHIRPath`. Eine Regel wie
`SLICING_CANNOT_BE_EVALUATED@Observation.component` trifft damit *jede*
Observation-Komponente — auch kuenftige, echte Fehler. Bevor eine Regel
aufgenommen wird, muss man deshalb wissen, was sie heute trifft und auf
welchen Profilen.

Dieses Skript misst das an einem echten Validierungsreport:

    ./scripts/advisor-rules.py validation-unfiltered.json
        Clusteruebersicht: welche Message-ID auf welchem Pfad, je Profil

    ./scripts/advisor-rules.py validation-unfiltered.json --test \\
        "SLICING_CANNOT_BE_EVALUATED@Observation.component"
        Fuer jede Kandidatenregel: Treffer, betroffene Profile, Dateien

Exit immer 0 — das Ergebnis ist der Report.
"""
import argparse
import collections
import json
import os
import re
import sys


def norm(expr):
    """Bundle-Praefix, Indizes und ofType() entfernen — so matcht der Advisor."""
    e = re.sub(r"^Bundle\.entry\[\d+\]\.resource(/\*[^*]*\*/)?", "", expr or "")
    e = re.sub(r"\[\d+\]", "", e)
    e = re.sub(r"\.ofType\([^)]*\)", "", e)
    return e.lstrip(".")


def load(path):
    d = json.load(open(path, encoding="utf-8"))
    entries = d.get("entry", []) if d.get("resourceType") == "Bundle" else [d]
    out = []
    for e in entries:
        oo = e.get("resource", e)
        if oo.get("resourceType") != "OperationOutcome":
            continue
        f = os.path.basename(next((x.get("valueString") for x in oo.get("extension", [])
                                   if x.get("url", "").endswith("file")), "?"))
        for i in oo.get("issue", []):
            if i.get("severity") not in ("error", "fatal"):
                continue
            mid = str(next((x.get("valueCode") or x.get("valueString")
                            for x in i.get("extension", [])
                            if x.get("url", "").endswith("message-id")), "(ohne id)"))
            raw = (i.get("expression") or [""])[0]
            txt = (i.get("details", {}) or {}).get("text", "")
            # Profil-URL aus dem Meldungstext ziehen, wo vorhanden
            m = re.search(r"(https?://[^\s|)\"]+/StructureDefinition/[A-Za-z0-9._-]+)", txt)
            out.append({"file": f, "mid": mid, "path": norm(raw), "raw": raw,
                        "profile": m.group(1).split("/")[-1] if m else "",
                        "text": txt})
    return out


def overview(issues, top):
    print(f"# Fehler-Cluster ({len(issues)} Errors)\n")
    by = collections.Counter((i["mid"], i["path"]) for i in issues)
    print("| Message-ID | Pfad | Treffer | Profile |")
    print("|---|---|---:|---|")
    for (mid, path), n in by.most_common(top):
        profs = collections.Counter(i["profile"] for i in issues
                                    if i["mid"] == mid and i["path"] == path and i["profile"])
        pl = ", ".join(f"`{p}`" for p, _ in profs.most_common(3)) or "—"
        if len(profs) > 3:
            pl += f" … +{len(profs)-3}"
        print(f"| `{mid}` | `{path or '(Wurzel)'}` | {n} | {pl} |")


def test_rules(issues, rules):
    total = len(issues)
    print(f"# Regel-Test gegen {total} Errors\n")
    covered = set()
    for r in rules:
        mid, _, path = r.partition("@")
        hits = [k for k, i in enumerate(issues)
                if i["mid"] == mid and (i["path"] == path or i["path"].startswith(path + "."))]
        profs = collections.Counter(issues[k]["profile"] for k in hits if issues[k]["profile"])
        files = {issues[k]["file"] for k in hits}
        covered |= set(hits)
        print(f"## `{r}`\n")
        print(f"- **{len(hits)} Treffer** in {len(files)} Dateien")
        if profs:
            print(f"- Profile: " + ", ".join(f"`{p}` ({n})" for p, n in profs.most_common(6)))
        else:
            print("- Profile: aus dem Meldungstext nicht ableitbar")
        if hits:
            print(f"- Beispiel: {issues[hits[0]]['text'][:150]}")
        print()
    print(f"---\n\n**Zusammen {len(covered)} von {total} Errors** "
          f"({100*len(covered)/total:.1f} %) — es blieben {total-len(covered)}.")
    rest = collections.Counter(issues[k]["mid"] for k in range(total) if k not in covered)
    if rest:
        print("\nWas ungefiltert bliebe (Top):\n")
        for mid, n in rest.most_common(8):
            print(f"- `{mid}`: {n}")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("report")
    ap.add_argument("--test", nargs="*", help="Kandidatenregeln MessageId@Pfad")
    ap.add_argument("--top", type=int, default=15)
    a = ap.parse_args()
    issues = load(a.report)
    if a.test:
        test_rules(issues, a.test)
    else:
        overview(issues, a.top)
    sys.exit(0)


if __name__ == "__main__":
    main()

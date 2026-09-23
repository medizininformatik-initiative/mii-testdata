#!/usr/bin/env python3
"""check-coding-quality.py — Coding-Qualität der Testdaten-Instanzen.

Findet drei Muster in kds-testdata/fsh-generated/resources (ohne Bundles,
die duplizieren nur die Einzelressourcen):
  1. CodeableConcept NUR mit text, ohne coding   -> meist ein Versäumnis
  2. coding ohne system oder code                -> immer ein Fehler
  3. coding ohne display                         -> Hinweis (Lesbarkeit)

Absichtliche Freitext-Fälle (ALLOWLIST): Patient 2 ist per Design der
"unstrukturierte" Medikations-Patient — medicationCodeableConcept.text ohne
coding ist dort das Testziel, kein Mangel.

Usage: check-coding-quality.py [resources-dir]
Exit 1, wenn Muster 1 (außerhalb Allowlist) oder Muster 2 gefunden wird.
"""
import json, glob, sys, os, collections

RES_DIR = sys.argv[1] if len(sys.argv) > 1 else "kds-testdata/fsh-generated/resources"

# (Instanz-id-Präfix, Element-Pfad-Suffix): absichtlich text-only
ALLOWLIST = [
    ("mii-exa-test-data-patient-2-med", "medicationCodeableConcept"),
]

CC_FIELDS = {
    "code", "category", "type", "valueCodeableConcept", "medicationCodeableConcept",
    "bodySite", "reasonCode", "method", "interpretation", "route", "form",
    "vaccineCode", "clinicalStatus", "verificationStatus", "severity", "criticality",
    "class", "priority", "use", "relationship", "maritalStatus", "site", "substance",
    "manifestation", "outcome", "stage", "morphology", "topography", "laterality",
    "dataAbsentReason", "serviceType", "specialty", "appointmentType",
    "definitionCodeableConcept", "statusReason", "primaryPurposeType", "phase",
}

def allowed(inst_id, path):
    return any(inst_id.startswith(p) and path.endswith(s) for p, s in ALLOWLIST)

def walk(node, path, rt, inst_id, out):
    if isinstance(node, dict):
        last = path.split(".")[-1]
        codings = node.get("coding")
        if isinstance(codings, list):
            for c in codings:
                if isinstance(c, dict):
                    if "system" not in c or "code" not in c:
                        out["incomplete"].append((rt, path, inst_id))
                    elif "display" not in c:
                        out["nodisplay"][(rt, path)] += 1
        elif "text" in node and isinstance(node.get("text"), str) and \
                (last in CC_FIELDS or last.endswith("CodeableConcept")) and \
                set(node) <= {"text", "extension"}:
            if not allowed(inst_id, path):
                out["textonly"].append((rt, path, inst_id))
        for k, v in node.items():
            if k == "text" and isinstance(v, dict) and "div" in v:
                continue  # Narrative
            walk(v, f"{path}.{k}" if path else k, rt, inst_id, out)
    elif isinstance(node, list):
        for v in node:
            walk(v, path, rt, inst_id, out)

def main():
    out = {"textonly": [], "incomplete": [], "nodisplay": collections.Counter()}
    n = 0
    for f in sorted(glob.glob(os.path.join(RES_DIR, "*.json"))):
        base = os.path.basename(f)
        if base.startswith(("ImplementationGuide", "Bundle-")):
            continue
        try:
            d = json.load(open(f))
        except Exception:
            continue
        n += 1
        walk(d, "", d.get("resourceType", "?"), d.get("id", base), out)

    print(f"# Coding-Qualität ({n} Einzelressourcen)\n")
    print(f"## 1) text ohne coding (außerhalb Allowlist): {len(out['textonly'])}\n")
    for rt, p, i in out["textonly"]:
        print(f"- `{rt}.{p}` — {i}")
    print(f"\n## 2) coding ohne system/code: {len(out['incomplete'])}\n")
    for rt, p, i in out["incomplete"]:
        print(f"- `{rt}.{p}` — {i}")
    top = out["nodisplay"].most_common(10)
    print(f"\n## 3) coding ohne display: {sum(out['nodisplay'].values())} "
          f"an {len(out['nodisplay'])} Pfaden (Hinweis, kein Gate)\n")
    for (rt, p), c in top:
        print(f"- {c}× `{rt}.{p}`")
    sys.exit(1 if out["textonly"] or out["incomplete"] else 0)

if __name__ == "__main__":
    main()

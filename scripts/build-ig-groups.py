#!/usr/bin/env python3
"""build-ig-groups.py — Artefakt-Gruppen des Testdaten-IG aus den FSH-Ordnern.

Schreibt den `groups:`-Block in kds-testdata/sushi-config.yaml zwischen die
Marker `# BEGIN generated groups` und `# END generated groups` neu. Jede
Instanz gehoert zu genau einer Gruppe, bestimmt durch den Ordner ihrer
FSH-Quelle:

    input/fsh/modul-<modul>/      -> Gruppe "Module: <Modul>"
    input/fsh/journey-<name>/     -> Gruppe "Cross-module patient: <Name>"
    input/fsh/Bundle.fsh (pat-1..10)  -> "Patient bundles (core modules)"
    input/fsh/Bundle.fsh (pat-11..14) -> die zugehoerige Journey-Gruppe

Der Ressourcentyp kommt aus `InstanceOf:` (Profilname -> Typ ueber die
FSH-Quelle selbst nicht aufloesbar), deshalb aus fsh-generated/resources/
(Dateiname <Typ>-<id>.json). Vorher also `sushi build` laufen lassen.

Aufruf aus dem Repo-Root oder aus kds-testdata/:
    python3 scripts/build-ig-groups.py [--check]

--check schreibt nichts und endet mit Exit 1, wenn der Block veraltet ist
(fuer CI).
"""
import glob
import json
import os
import re
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
KDS = os.path.join(ROOT, "kds-testdata")
CFG = os.path.join(KDS, "sushi-config.yaml")
BEGIN, END = "# BEGIN generated groups", "# END generated groups"

# Reihenfolge = Reihenfolge auf der Artefaktseite. Erst Basismodule, dann
# Erweiterungsmodule, dann ISiK, dann Patienten-Bundles, dann die Journeys.
MODULES = [
    ("modul-person", "Person", "Core module: Person"),
    ("modul-fall", "Fall", "Core module: Fall (encounter)"),
    ("modul-diagnose", "Diagnose", "Core module: Diagnose (condition)"),
    ("modul-prozedur", "Prozedur", "Core module: Prozedur (procedure)"),
    ("modul-labor", "Labor", "Core module: Labor (laboratory)"),
    ("modul-medikation", "Medikation", "Core module: Medikation (medication)"),
    ("modul-consent", "Consent", "Core module: Consent"),
    ("modul-bildgebung", "Bildgebung", "Extension module: Bildgebung (imaging)"),
    ("modul-biobank", "Biobank", "Extension module: Biobank"),
    ("modul-dokument", "Dokument", "Extension module: Dokument (document)"),
    ("modul-icu", "ICU", "Extension module: Intensivmedizin (ICU)"),
    ("modul-kardiologie", "Kardiologie", "Extension module: Kardiologie (cardiology)"),
    ("modul-lungenfunktion", "Lungenfunktion", "Extension module: Lungenfunktion (pulmonary function)"),
    ("modul-mikrobio", "Mikrobiologie", "Extension module: Mikrobiologie (microbiology)"),
    ("modul-molgen", "MolGen", "Extension module: Molekulargenetischer Befundbericht (MolGen)"),
    ("modul-mtb", "MTB", "Extension module: Molekulares Tumorboard (MTB)"),
    ("modul-onkologie", "Onkologie", "Extension module: Onkologie (oncology)"),
    ("modul-patho", "Pathologie", "Extension module: Pathologie (pathology)"),
    ("modul-pro", "PRO", "Extension module: Patient-Reported Outcomes (PRO)"),
    ("modul-seltene", "Seltene Erkrankungen", "Extension module: Seltene Erkrankungen (rare diseases)"),
    ("modul-soziodemographie", "Soziodemographie", "Extension module: Soziodemographie (sociodemographics)"),
    ("modul-studien", "Studien", "Extension module: Studien (research studies)"),
    ("modul-symptom", "Symptom", "Extension module: Symptom"),
    ("modul-isik-vitalparameter", "ISiK Vitalparameter",
     "gematik ISiK vital signs, referenced by KDS modules (not an MII module)"),
]
JOURNEYS = [
    ("journey-forschung-prom", "pat-11", "Patient-11: research project, sociodemographics, PROM course",
     "Cross-module example patient 11 — heart failure with registry study, sociodemographic baseline and a longitudinal PROM course (Studie, Soziodemographie, PRO)"),
    ("journey-sepsis-icu", "pat-12", "Patient-12: sepsis in intensive care",
     "Cross-module example patient 12 — septic shock with ventilation, SOFA course and the antibiotic switch linked to the resistance finding (ICU, Mikrobiologie)"),
    ("journey-seltene-symptom", "pat-13", "Patient-13: diagnostic odyssey in a rare disease",
     "Cross-module example patient 13 — Fabry disease with a measurable 12-year diagnostic delay (Symptom, Seltene Erkrankungen)"),
    ("journey-onkologie-mtb", "pat-14", "Patient-14: personalised oncology",
     "Cross-module example patient 14 — colorectal cancer from pathology via NGS and molecular tumor board to systemic therapy (Onkologie, MTB)"),
]
# Ressourcen aus input/predefined-resources/ haben keinen FSH-Ordner; ihre
# Gruppe steht hier. Neue vordefinierte Ressource => Eintrag ergaenzen.
PREDEFINED = {
    "Observation/mii-exa-test-data-patient-1-labobs-7": "modul-labor",
}
PAT_CORE = ("Patient bundles 1-10 (core modules)",
            "Clinically coherent courses per patient across the core modules "
            "Person, Fall, Diagnose, Prozedur, Labor, Medikation and Consent")


def collect():
    typ = {}
    gen = os.path.join(KDS, "fsh-generated", "resources")
    if not os.path.isdir(gen):
        sys.exit("fsh-generated/resources fehlt — erst `sushi build` ausfuehren "
                 "(bei kaputtem groups-Block: Block zwischen den Markern leeren, bauen, "
                 "dann dieses Skript)")
    for f in os.listdir(gen):
        if f.endswith(".json") and not f.startswith("ImplementationGuide-"):
            t, i = f[:-5].split("-", 1)
            typ[i] = t
    if not typ:
        sys.exit("fsh-generated/resources ist leer — erst `sushi build` ausfuehren")
    members = {}  # folder -> [ids]
    pre = os.path.join(KDS, "input", "predefined-resources")
    for f in sorted(os.listdir(pre)) if os.path.isdir(pre) else []:
        if not f.endswith(".json"):
            continue
        t, i = f[:-5].split("-", 1)
        folder = PREDEFINED.get(f"{t}/{i}")
        if not folder:
            sys.exit(f"predefined-resources/{f}: keine Gruppe in PREDEFINED (build-ig-groups.py)")
        typ[i] = t
        members.setdefault(folder, []).append(i)
    for p in sorted(glob.glob(os.path.join(KDS, "input", "fsh", "**", "*.fsh"), recursive=True)):
        rel = os.path.relpath(p, os.path.join(KDS, "input", "fsh"))
        folder = rel.split(os.sep)[0] if os.sep in rel else "(root)"
        for m in re.finditer(r"^Instance:\s*(\S+)", open(p, encoding="utf-8").read(), re.M):
            iid = m.group(1)
            if iid not in typ:
                sys.exit(f"{iid} aus {rel} fehlt in fsh-generated — `sushi build` veraltet?")
            members.setdefault(folder, []).append(iid)
    return typ, members


def render(typ, members):
    used = set()
    out = ["groups:"]

    def emit(key, name, desc, ids):
        # Name und Beschreibung landen per XSLT in Liquid-Templates der
        # Artefaktseite; Anfuehrungszeichen und Liquid-Klammern wuerden dort brechen.
        for txt in (name, desc):
            if any(c in txt for c in "\"'{}%"):
                sys.exit(f"Gruppe {key}: Anfuehrungszeichen oder Liquid-Zeichen in {txt!r}")
        ids = sorted(ids, key=lambda i: (typ[i] != "Bundle", typ[i], i))
        out.append(f"  {key}:")
        # Doppelpunkte in Name/Beschreibung: YAML verlangt Anfuehrungszeichen
        out.append(f"    name: {json.dumps(name, ensure_ascii=False)}")
        out.append(f"    description: {json.dumps(desc, ensure_ascii=False)}")
        out.append("    resources:")
        for i in ids:
            assert i not in used, f"{i} in zwei Gruppen"
            used.add(i)
            out.append(f"      - {typ[i]}/{i}")

    folders = set(members)
    for folder, label, desc in MODULES:
        ids = members.get(folder)
        if not ids:
            sys.exit(f"Ordner {folder} ohne Instanzen — MODULES in build-ig-groups.py anpassen")
        folders.discard(folder)
        emit(folder, f"Module: {label}", desc, ids)

    root = members.get("(root)", [])
    folders.discard("(root)")
    core = [i for i in root if re.fullmatch(r"mii-exa-test-data-bundle-pat-(10|[1-9])", i)]
    emit("patient-bundles-core", *PAT_CORE, core)

    for folder, pat, name, desc in JOURNEYS:
        ids = members.get(folder)
        if not ids:
            sys.exit(f"Ordner {folder} ohne Instanzen — JOURNEYS in build-ig-groups.py anpassen")
        folders.discard(folder)
        bundle = [i for i in root if i == f"mii-exa-test-data-bundle-{pat}"]
        emit(folder, name, desc, bundle + ids)

    stray = [i for i in root if i not in used]
    if stray or folders:
        sys.exit(f"Nicht zugeordnet: Ordner {sorted(folders)}, Root-Instanzen {stray}")
    missing = sorted(set(typ) - used)
    if missing:
        sys.exit(f"Generiert, aber in keiner FSH-Quelle: {missing[:10]}")
    return "\n".join(out) + "\n"


def main():
    typ, members = collect()
    block = render(typ, members)
    s = open(CFG, encoding="utf-8").read()
    a, b = s.index(BEGIN) + len(BEGIN) + 1, s.index(END)
    new = s[:a] + block + s[b:]
    n = block.count("\n      - ")
    if "--check" in sys.argv:
        if new != s:
            print("groups-Block in sushi-config.yaml ist veraltet — "
                  "python3 scripts/build-ig-groups.py ausfuehren", file=sys.stderr)
            sys.exit(1)
        print(f"groups aktuell ({n} Instanzen)")
        return
    open(CFG, "w", encoding="utf-8").write(new)
    print(f"{CFG}: {n} Instanzen in {block.count(chr(10) + '    name: ')} Gruppen")


if __name__ == "__main__":
    main()

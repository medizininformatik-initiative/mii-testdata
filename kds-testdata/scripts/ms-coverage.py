#!/usr/bin/env python3
"""Misst die Must-Support-Abdeckung der KDS-Testdaten je Modul.

Metrik (siehe README, "Module bundles — technical layer"): Anteil der
Must-Support-Elemente eines Moduls, die von mindestens einer Testdaten-
Instanz korrekt befuellt sind. Daneben wird die Profilabdeckung berichtet
(Profile mit mindestens einer Instanz) und die absolute Zahl der MS-Flags
je Modul — die Module setzen MS sehr unterschiedlich grosszuegig, die
Prozentzahlen sind deshalb nur zusammen mit den absoluten Zahlen lesbar.

    ./scripts/ms-coverage.py                     # Tabelle auf stdout
    ./scripts/ms-coverage.py --markdown out.md --json out.json

Datenquellen:
  - Profile: die in sushi-config.yaml gepinnten MII-Packages aus dem
    lokalen FHIR-Cache (~/.fhir/packages), bei Bedarf von
    packages.simplifier.net nachgeladen
  - Instanzen: fsh-generated/resources/ (nach `sushi build .`) und
    input/predefined-resources/; Bundles werden entpackt

Zuordnung Instanz -> Profil ausschliesslich ueber meta.profile.
Slice-Pruefung: Extension-Slices exakt ueber die url, Slices mit
fixed*/pattern*-Diskriminator ueber Teilmengen-Vergleich; Slices ohne
erkennbaren Diskriminator werden ueber den Basis-Pfad angenaehert und
im JSON als "approx" markiert.
"""

import argparse
import io
import json
import os
import re
import sys
import tarfile
import urllib.request

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
FHIR_CACHE = os.path.expanduser("~/.fhir/packages")
MII_PREFIX = "de.medizininformatikinitiative.kerndatensatz."


def pinned_packages():
    """Liest die MII-Dependencies aus sushi-config.yaml (ohne YAML-Lib)."""
    pkgs, current = {}, None
    in_deps = False
    for line in open(os.path.join(ROOT, "sushi-config.yaml"), encoding="utf-8"):
        if re.match(r"^dependencies:\s*$", line):
            in_deps = True
            continue
        if in_deps:
            if re.match(r"^\S", line):  # naechster Top-Level-Key
                break
            m = re.match(r"^  ([A-Za-z0-9.\-]+):\s*(\S+)?\s*$", line)
            if m:
                current = m.group(1)
                if m.group(2):
                    pkgs[current] = m.group(2)
                    current = None
                continue
            m = re.match(r"^\s+version:\s*(\S+)\s*$", line)
            if m and current:
                pkgs[current] = m.group(1)
                current = None
    return {k: v for k, v in pkgs.items() if k.startswith(MII_PREFIX)}


def ensure_package(pkg, ver):
    d = os.path.join(FHIR_CACHE, f"{pkg}#{ver}", "package")
    if os.path.isdir(d):
        return d
    print(f"  lade {pkg}#{ver} von Simplifier ...", file=sys.stderr)
    url = f"https://packages.simplifier.net/{pkg}/{ver}"
    with urllib.request.urlopen(url, timeout=300) as r:
        data = r.read()
    with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as t:
        t.extractall(os.path.join(FHIR_CACHE, f"{pkg}#{ver}"))
    return d


def load_profiles(pkg, ver):
    """StructureDefinitions (Ressourcen-Profile) eines Packages."""
    out = []
    d = ensure_package(pkg, ver)
    for f in sorted(os.listdir(d)):
        if not f.endswith(".json"):
            continue
        try:
            sd = json.load(open(os.path.join(d, f), encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        if (sd.get("resourceType") != "StructureDefinition"
                or sd.get("derivation") != "constraint"
                or sd.get("kind") != "resource"
                or sd.get("abstract")):
            continue
        elements = (sd.get("snapshot") or sd.get("differential") or {}).get("element", [])
        ms = [e for e in elements if e.get("mustSupport")]
        out.append({
            "url": sd["url"], "name": sd.get("name", sd["url"]),
            "type": sd.get("type"), "ms": ms, "elements": elements,
        })
    return out


def collect_instances():
    """Alle Testdaten-Instanzen, Bundles entpackt, dedupliziert."""
    seen, out = set(), []

    def add(res):
        if not isinstance(res, dict) or "resourceType" not in res:
            return
        if res["resourceType"] == "Bundle":
            for e in res.get("entry", []):
                add(e.get("resource"))
            return
        key = (res["resourceType"], res.get("id"))
        if key in seen:
            return
        seen.add(key)
        out.append(res)

    for sub in ("fsh-generated/resources", "input/predefined-resources"):
        d = os.path.join(ROOT, sub)
        if not os.path.isdir(d):
            continue
        for dirpath, _, files in os.walk(d):
            for f in sorted(files):
                if not f.endswith(".json"):
                    continue
                try:
                    add(json.load(open(os.path.join(dirpath, f), encoding="utf-8")))
                except (json.JSONDecodeError, UnicodeDecodeError):
                    pass
    return out


def parse_element_id(eid):
    """'Observation.component:sys.code' -> [('component','sys'),('code',None)] (ohne Ressourcentyp)."""
    segs = []
    for part in eid.split(".")[1:]:
        name, _, slice_ = part.partition(":")
        segs.append((name, slice_ or None))
    return segs


def collect_values(objs, name):
    out = []
    for o in objs:
        if not isinstance(o, dict):
            continue
        if name.endswith("[x]"):
            base = name[:-3]
            for k, v in o.items():
                if k == base or (k.startswith(base) and len(k) > len(base) and k[len(base)].isupper()):
                    out.append(v)
        elif name in o:
            out.append(o[name])
    flat = []
    for v in out:
        flat.extend(v if isinstance(v, list) else [v])
    return [v for v in flat if v not in (None, "", [], {})]


def matches_pattern(value, pattern):
    if isinstance(pattern, dict):
        return isinstance(value, dict) and all(
            any(matches_pattern(v, pv) for v in ([value.get(k)] if not isinstance(value.get(k), list) else value.get(k)))
            for k, pv in pattern.items()
        )
    if isinstance(pattern, list):
        if not isinstance(value, list):
            return False
        return all(any(matches_pattern(v, p) for v in value) for p in pattern)
    return value == pattern


def slice_constraints(profile, elem_id):
    """(relpath, wert)-Bedingungen fuer einen Slice aus fixed*/pattern* der Kindelemente."""
    cons = []
    prefix = elem_id + "."
    for e in profile["elements"]:
        eid = e.get("id", "")
        if not eid.startswith(prefix):
            continue
        rel = eid[len(prefix):]
        if ":" in rel:
            continue
        for k, v in e.items():
            if k.startswith("fixed") or k.startswith("pattern"):
                cons.append((rel.split("."), v))
    # Diskriminator direkt am Slice-Element selbst (z.B. patternCodeableConcept)
    for e in profile["elements"]:
        if e.get("id") == elem_id:
            for k, v in e.items():
                if k.startswith("fixed") or k.startswith("pattern"):
                    cons.append(([], v))
    return cons


def candidate_matches(obj, cons):
    for relpath, want in cons:
        vals = [obj]
        for seg in relpath:
            vals = collect_values(vals, seg)
        if not any(matches_pattern(v, want) for v in vals):
            return False
    return True


def element_covered(profile, elem, instances):
    """(covered, approx): ist das MS-Element in irgendeiner Instanz befuellt?"""
    eid = elem.get("id") or elem.get("path")
    segs = parse_element_id(eid)
    if not segs:  # das Wurzelelement selbst
        return (len(instances) > 0, False)
    approx = False
    for res in instances:
        objs, ok, id_prefix = [res], True, eid.split(".")[0]
        for name, slice_ in segs:
            id_prefix += "." + name + (":" + slice_ if slice_ else "")
            objs = collect_values(objs, name)
            if slice_:
                cons = slice_constraints(profile, id_prefix)
                if cons:
                    objs = [o for o in objs if isinstance(o, dict) and candidate_matches(o, cons)]
                else:
                    approx = True
            if not objs:
                ok = False
                break
        if ok and objs:
            return (True, approx)
    return (False, approx)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--markdown", help="Markdown-Report in diese Datei schreiben")
    ap.add_argument("--json", dest="json_out", help="JSON-Report in diese Datei schreiben")
    a = ap.parse_args()

    pkgs = pinned_packages()
    if not pkgs:
        sys.exit("Keine MII-Dependencies in sushi-config.yaml gefunden.")
    instances = collect_instances()
    if not instances:
        sys.exit("Keine Instanzen gefunden — vorher `sushi build .` ausfuehren.")
    by_profile_url = {}
    for res in instances:
        for canon in (res.get("meta") or {}).get("profile", []):
            by_profile_url.setdefault(canon.split("|")[0], []).append(res)

    modules, unmatched = {}, {u: len(v) for u, v in by_profile_url.items()}
    for pkg, ver in sorted(pkgs.items()):
        mod = pkg[len(MII_PREFIX):]
        profs = []
        for p in load_profiles(pkg, ver):
            insts = by_profile_url.get(p["url"], [])
            unmatched.pop(p["url"], None)
            covered = uncovered = 0
            uncovered_ids, approx_ids = [], []
            for e in p["ms"]:
                ok, approx = element_covered(p, e, insts)
                if ok:
                    covered += 1
                    if approx:
                        approx_ids.append(e.get("id") or e.get("path"))
                else:
                    uncovered += 1
                    uncovered_ids.append(e.get("id") or e.get("path"))
            profs.append({
                "profile": p["name"], "url": p["url"], "instances": len(insts),
                "ms_total": len(p["ms"]), "ms_covered": covered,
                "uncovered": uncovered_ids, "approx": approx_ids,
            })
        ms_total = sum(p["ms_total"] for p in profs)
        ms_cov = sum(p["ms_covered"] for p in profs)
        modules[mod] = {
            "package": pkg, "version": ver, "profiles": profs,
            "profiles_total": len(profs),
            "profiles_with_instances": sum(1 for p in profs if p["instances"]),
            "ms_total": ms_total, "ms_covered": ms_cov,
            "ms_pct": round(100 * ms_cov / ms_total, 1) if ms_total else None,
        }

    # ── Ausgabe ──────────────────────────────────────────────────────────────
    header = f"{'MODUL':<18} {'VERSION':<16} {'PROFILE':>8} {'MIT INST':>9} {'MS':>6} {'BEFUELLT':>9} {'COVERAGE':>9}"
    lines = [header, "-" * len(header)]
    for mod, m in sorted(modules.items()):
        pct = f"{m['ms_pct']}%" if m["ms_pct"] is not None else "–"
        lines.append(f"{mod:<18} {m['version']:<16} {m['profiles_total']:>8} "
                     f"{m['profiles_with_instances']:>9} {m['ms_total']:>6} {m['ms_covered']:>9} {pct:>9}")
    tot_ms = sum(m["ms_total"] for m in modules.values())
    tot_cov = sum(m["ms_covered"] for m in modules.values())
    lines.append("-" * len(header))
    lines.append(f"{'GESAMT':<18} {'':<16} {sum(m['profiles_total'] for m in modules.values()):>8} "
                 f"{sum(m['profiles_with_instances'] for m in modules.values()):>9} {tot_ms:>6} {tot_cov:>9} "
                 f"{(str(round(100*tot_cov/tot_ms,1))+'%') if tot_ms else '–':>9}")
    print("\n".join(lines))
    if unmatched:
        print(f"\n{sum(unmatched.values())} Instanz-Zuordnungen auf Profile ausserhalb der MII-Packages "
              f"({len(unmatched)} Canonicals) — im JSON unter 'unmatched'.")

    if a.markdown:
        md = ["# MS-Coverage der KDS-Testdaten", "",
              "| Modul | Version | Profile | mit Instanz | MS-Elemente | befüllt | Coverage |",
              "|-------|---------|--------:|------------:|------------:|--------:|---------:|"]
        for mod, m in sorted(modules.items()):
            pct = f"{m['ms_pct']} %" if m["ms_pct"] is not None else "–"
            md.append(f"| {mod} | {m['version']} | {m['profiles_total']} | {m['profiles_with_instances']} "
                      f"| {m['ms_total']} | {m['ms_covered']} | {pct} |")
        md += ["", f"Gesamt: {tot_cov} von {tot_ms} MS-Elementen befüllt "
               f"({round(100*tot_cov/tot_ms,1) if tot_ms else 0} %). "
               "Generiert mit `scripts/ms-coverage.py`."]
        open(a.markdown, "w", encoding="utf-8").write("\n".join(md) + "\n")
        print(f"\nMarkdown: {a.markdown}")
    if a.json_out:
        open(a.json_out, "w", encoding="utf-8").write(json.dumps(
            {"modules": modules, "unmatched": unmatched}, indent=2, ensure_ascii=False))
        print(f"JSON: {a.json_out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

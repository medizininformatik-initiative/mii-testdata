#!/usr/bin/env python3
"""check-terminology-versions.py — Welche CodeSystem-Versionen liefert der
Terminologieserver, und wie verhalten sie sich zu unseren Paket-Pins?

Hintergrund: Die Pakete pinnen Profile, nicht Terminologie. Welche Fassung eines
CodeSystems bei der Validierung zugrunde liegt, entscheidet allein der
Terminologieserver — und das ist unsichtbar, bis eine Expansion anders ausfaellt
als erwartet. Bei MDC (IEEE 11073) ist es besonders krass: hl7.terminology 7.x
liefert dafuer nur noch ein NamingSystem, gar kein CodeSystem mehr.

Vorgehen: Aus den erzeugten Testdaten je CodeSystem EIN real verwendetes
(system, code)-Paar ziehen und damit `$lookup` gegen den Server fahren — die
Antwort traegt die geladene Version. Gegenprobe ist die im FHIR-Paket-Cache
deklarierte Version.

    ./scripts/check-terminology-versions.py                     # Markdown-Report
    ./scripts/check-terminology-versions.py --tx http://host:3000
    ./scripts/check-terminology-versions.py --only snomed,loinc  # Teilmenge

Der Report ist das Ergebnis, kein Gate: Exit immer 0.
"""
import argparse
import glob
import json
import os
import sys
import time
import urllib.error
import urllib.request

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
RES = os.path.join(ROOT, "kds-testdata", "fsh-generated", "resources")
CACHE = os.path.expanduser("~/.fhir/packages")
DEFAULT_TX = "http://localhost:3000"

# Systeme, deren Version vertraglich relevant ist (bfarm-Kataloge sind
# jahresversioniert, SNOMED/LOINC wandern halbjaehrlich).
VERSIONED = (
    "snomed.info/sct", "loinc.org", "bfarm/", "11073", "atc", "unitsofmeasure",
    "hl7.org/fhir/sid", "terminology.hl7.org", "fhir.de/CodeSystem",
)


def sample_codings():
    """Je CodeSystem ein real in den Testdaten verwendetes (system, code)-Paar."""
    out = {}

    def walk(n):
        if isinstance(n, dict):
            s, c = n.get("system"), n.get("code")
            if (isinstance(s, str) and isinstance(c, str)
                    and s.startswith(("http", "urn")) and "|" not in s):
                out.setdefault(s, (c, n.get("version")))
            for v in n.values():
                walk(v)
        elif isinstance(n, list):
            for v in n:
                walk(v)

    for f in sorted(glob.glob(os.path.join(RES, "*.json"))):
        if os.path.basename(f).startswith("Bundle-"):
            continue  # dupliziert die Einzelressourcen
        try:
            walk(json.load(open(f, encoding="utf-8")))
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
    return out


def relevant_packages():
    """Die Pakete, gegen die verglichen wird: unsere gepinnten Terminologie-Quellen.

    Ein Vergleich gegen *alle* gecachten Fassungen erzeugt nur Rauschen — im Cache
    liegen alte THO-Staende, und jede IG darf eine eigene CodeSystem-Kopie mit
    eigener Ressourcen-`version` mitfuehren. Massgeblich ist, was unsere Pins
    erwarten.
    """
    pkgs = {"hl7.fhir.r4.core#4.0.1"}
    try:
        deps = json.load(open(os.path.join(ROOT, "kds-testdata", "package.json"),
                              encoding="utf-8")).get("dependencies", {})
    except (OSError, json.JSONDecodeError):
        deps = {}
    for name, ver in deps.items():
        if name.startswith(("hl7.terminology", "hl7.fhir.r4.core")):
            pkgs.add(f"{name}#{ver}")
    # THO wird von den Modulen auch transitiv gezogen (hl7.terminology#7.x);
    # die hoechste im Cache vorhandene Fassung mitnehmen.
    tho = sorted((os.path.basename(d) for d in glob.glob(os.path.join(CACHE, "hl7.terminology#*"))),
                 key=lambda x: [int(n) for n in x.split("#")[1].split(".") if n.isdigit()] or [0])
    if tho:
        pkgs.add(tho[-1])
    return pkgs


def declared_versions(pkgs):
    """Deklarierte CodeSystem-Versionen aus den massgeblichen Paketen.

    url -> {version: {paket, ...}}. Fragmente/Supplements werden ausgelassen:
    sie beschreiben Ausschnitte, nicht die Fassung des CodeSystems.
    """
    out = {}
    for f in glob.glob(os.path.join(CACHE, "*", "package", "CodeSystem-*.json")):
        pkg = os.path.basename(os.path.dirname(os.path.dirname(f)))
        if pkg not in pkgs:
            continue
        try:
            d = json.load(open(f, encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError, OSError):
            continue
        if d.get("content") in ("fragment", "supplement", "example"):
            continue
        url, ver = d.get("url"), d.get("version")
        if not url or not ver:
            continue
        out.setdefault(url, {}).setdefault(str(ver), set()).add(pkg)
    return out


def other_declarations(pkgs):
    """Versionen aus NICHT gepinnten Cache-Paketen — Anhaltspunkte fuer Updates.

    Beispiel: hl7.terminology 7.x fuehrt fuer MDC (IEEE 11073) nur noch ein
    NamingSystem. Die letzte Fassung mit CodeSystem (THO 6.5.0) deklariert
    `20250520`, waehrend der Server `2024-12-05` geladen hat — ein solcher
    Hinweis ist ohne diesen Blick unsichtbar.
    """
    out = {}
    for f in glob.glob(os.path.join(CACHE, "*", "package", "CodeSystem-*.json")):
        pkg = os.path.basename(os.path.dirname(os.path.dirname(f)))
        if pkg in pkgs or not pkg.startswith(("hl7.terminology", "hl7.fhir")):
            continue
        try:
            d = json.load(open(f, encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError, OSError):
            continue
        url, ver = d.get("url"), d.get("version")
        if url and ver:
            out.setdefault(url, {})[str(ver)] = pkg
    return out


# WARUM HIER NICHT AUTOMATISCH GEURTEILT WIRD
#
# Fuer extern gepflegte CodeSystems (`content: not-present`) ist die `version`
# der HL7-Deklaration NICHT die Version der Terminologie, sondern die der
# Deklarations-Ressource. Belegt am MDC-Eintrag: von THO 5.0.0 bis 6.3.0
# konstant `2.0.1` (Stand 2019), dann in 6.5.0 `20250520` — ein Schemawechsel
# anlaesslich einer Copyright-Aktualisierung, nicht einer Nomenklatur-Release
# (siehe Aenderungshistorie auf terminology.hl7.org). Ein Vergleich gegen den
# Server ergibt deshalb auch dann keinen Sinn, wenn beide Werte datumsfoermig
# sind. Der Report nennt die Fakten; die Bewertung bleibt beim Menschen.


def _post(url, payload, timeout):
    req = urllib.request.Request(
        url, data=json.dumps(payload).encode(),
        headers={"Content-Type": "application/json", "Accept": "application/fhir+json"})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return json.load(r)


def _version_of(params):
    for p in params.get("parameter", []):
        if p.get("name") == "version":
            return p.get("valueString") or p.get("valueUri")
    return None


def lookup(tx, system, code, timeout=25):
    """$lookup gegen zwei Servertypen.

    Lokal laeuft ein Gateway mit eigener API (`POST /lookup` mit
    `{system, code}`), in der CI dagegen ein nginx-mTLS-Proxy direkt vor dem
    FHIR-Endpunkt (`POST /CodeSystem/$lookup` mit einer Parameters-Ressource).
    Erst die schlanke Form versuchen, bei Misserfolg die FHIR-Form.
    """
    base = tx.rstrip("/")
    try:
        return _version_of(_post(base + "/lookup", {"system": system, "code": code}, timeout))
    except (urllib.error.HTTPError, urllib.error.URLError, json.JSONDecodeError):
        pass
    params = {"resourceType": "Parameters", "parameter": [
        {"name": "system", "valueUri": system},
        {"name": "code", "valueCode": code}]}
    return _version_of(_post(base + "/CodeSystem/$lookup", params, timeout))


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--tx", default=os.environ.get("TX_BASE", DEFAULT_TX),
                    help=f"Terminologie-Proxy (Default {DEFAULT_TX})")
    ap.add_argument("--only", help="Kommaliste: nur Systeme, deren URL diese Teilstrings enthaelt")
    ap.add_argument("--all", action="store_true",
                    help="alle Systeme abfragen, nicht nur die versionsrelevanten")
    ap.add_argument("--delay", type=float, default=0.15,
                    help="Pause zwischen Abfragen in Sekunden (Serverlast)")
    a = ap.parse_args()

    used = sample_codings()
    pkgs = relevant_packages()
    decl = declared_versions(pkgs)
    other = other_declarations(pkgs)
    systems = sorted(used)
    if not a.all:
        systems = [s for s in systems if any(k in s for k in VERSIONED)]
    if a.only:
        keys = [k.strip().lower() for k in a.only.split(",") if k.strip()]
        systems = [s for s in systems if any(k in s.lower() for k in keys)]

    print("# Terminologie-Versionen: Server vs. Paket-Deklaration\n")
    print(f"Stichprobe aus {len(used)} in den Testdaten verwendeten CodeSystems; "
          f"{len(systems)} davon abgefragt.")
    print(f"Server: `{a.tx}` · verglichen gegen: "
          + ", ".join(f"`{p}`" for p in sorted(pkgs))
          + f" · erzeugt: {time.strftime('%Y-%m-%d %H:%M')}\n")
    print("| CodeSystem | Server | im Paket-Cache deklariert | Befund |")
    print("|---|---|---|---|")

    drift, unreachable, undeclared = [], [], []
    server_ver = {}
    for s in systems:
        code, inst_ver = used[s]
        try:
            sv = lookup(a.tx, s, code)
        except (urllib.error.URLError, TimeoutError, OSError, json.JSONDecodeError) as e:
            sv = None
            unreachable.append((s, str(e)[:60]))
        server_ver[s] = sv
        dv = decl.get(s, {})
        dv_txt = ", ".join(f"`{v}` ({'/'.join(sorted(p)[:1])})"
                           for v, p in sorted(dv.items())) if dv else "—"
        if sv is None:
            note = "nicht abgefragt"
        elif not dv:
            note = "nur serverseitig"
            undeclared.append(s)
        elif str(sv) in dv:
            note = "identisch"
        else:
            note = "**abweichend**"
            drift.append((s, sv, sorted(dv)))
        print(f"| `{s.split('://')[-1][:56]}` | {('`'+str(sv)+'`') if sv else '—'} | {dv_txt} | {note} |")
        time.sleep(a.delay)

    print("\n## Auswertung\n")
    if drift:
        print(f"**{len(drift)} Abweichungen** zwischen geladener und deklarierter Fassung — "
              "Kandidaten für eine Update-Anfrage an den Terminologie-Betrieb:\n")
        for s, sv, dv in drift:
            print(f"- `{s}`: Server `{sv}`, Pakete {', '.join('`'+v+'`' for v in dv)}")
    else:
        print("Keine Abweichung zwischen Server und Paket-Deklarationen.")
    if undeclared:
        print(f"\n**{len(undeclared)} Systeme existieren nur serverseitig** — kein gepinntes Paket "
              "deklariert eine Version. Damit ist die zugrunde liegende Fassung allein eine "
              "Eigenschaft des Servers und in keinem Pin sichtbar. Ob ein Update noetig ist, "
              "laesst sich NICHT aus den Paketwerten ableiten (s.o.) — dafuer braucht es die "
              "Release-Info der jeweiligen Terminologie (SNOMED/LOINC/BfArM-Kalender, "
              "fuer MDC das RTMMS):\n")
        for s in undeclared:
            sv = server_ver.get(s)
            hint = other.get(s, {})
            if hint:
                newest = sorted(hint.items())[-1]
                print(f"- `{s}` — Server `{sv}`; zum Vergleich deklariert "
                      f"`{newest[1]}` den Wert `{newest[0]}` *(Version der "
                      "Deklarations-Ressource, nicht der Terminologie — siehe Kopf)*")
            else:
                print(f"- `{s}` — Server `{sv}`; keine Paket-Deklaration bekannt")
    if unreachable:
        print(f"\n**{len(unreachable)} nicht abgefragt** (Server-/Netzfehler) — "
              "die Zeilen sagen nichts über Drift aus:\n")
        for s, e in unreachable[:12]:
            print(f"- `{s}` — {e}")
    sys.exit(0)


if __name__ == "__main__":
    main()

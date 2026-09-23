# Ballot-Findings 2027 — aus der Testdaten-Erstellung

Befunde an den KDS-Modulprofilen, die beim Bau der Testdaten gegen
`de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19`
aufgefallen sind. Alle Angaben gegen die **Snapshots dieses BOM-Stands** verifiziert
(Reproduktion: Skripte in `scripts/`, Rohdaten in `docs/ms-coverage-index.json`).

Sortiert nach Tragweite. Jeder Befund nennt: Symptom, betroffene Profile, Nachweis,
Auswirkung auf die Testdaten, Vorschlag.

---

## 1. `dataAbsentReason` ist Must-Support, aber strukturell unerreichbar

**32 Profile in 3 Modulen** (ICU, Mikrobiologie, Soziodemographie) markieren
`Observation.dataAbsentReason` als Must-Support, während `Observation.value[x]`
gleichzeitig auf `1..1` steht. Die FHIR-Basisinvariante **obs-6**
(`dataAbsentReason.empty() or value.empty()`) macht eine DAR-Instanz damit
**unmöglich**: Der Wert *muss* da sein, also *darf* DAR nicht da sein.

Zusätzlich betroffen: **18 Komponenten-Slices** in drei ICU-Score-Profilen, wo
`component[x].value[x]` `min≥1` hat und die Komponente zugleich MS-`dataAbsentReason` trägt.

### Betroffene Profile

| Modul | Profile | Anmerkung |
|---|---|---|
| ICU | 20 Bilanz-Profile (`mii-pr-icu-bilanz*`) | Ein-/Ausfuhr, Tagesbilanz |
| ICU | `mii-pr-icu-muv-atemfrequenz` | |
| ICU | 6 Score-Profile (`cam-icu`, `faces-pain-scale-revised`, `gcs`, `icdsc`, `sofa`, `zopa`) | zusätzlich 18 Komponenten-Slices |
| Mikrobiologie | `mii-pr-mikrobio-resistenzkategorie-status` | |
| Soziodemographie | `mii-pr-sdd-betreuungssituation`, `-haushaltsgroesse`, `-partnerschaft`, `-vertrauensperson` | |

### Der entscheidende Hinweis: die eigene XOR-Invariante

Die sechs ICU-Score-Profile definieren selbst die Invariante

```
mii-icu-val-xor-dar:  value.exists() xor dataAbsentReason.exists()
```

Diese Invariante **belegt die Modellierungsabsicht**: entweder ein Wert *oder* ein
Grund für dessen Fehlen. Genau diese Absicht wird durch `value[x] 1..1` ausgehebelt —
das XOR degeneriert zu „Wert vorhanden, DAR verboten". Die Kardinalität ist der Fehler,
nicht die Invariante.

### Vorschlag

`value[x]` (bzw. `component.value[x]`) auf **`0..1`** setzen und die Pflicht über die
XOR-Invariante durchsetzen — für die Score-Profile bereits vorhanden, für Bilanz-,
Mikrobio- und sdd-Profile analog ergänzen. Das erhält die inhaltliche Pflicht
(eines von beidem muss da sein), macht MS-`dataAbsentReason` aber erfüllbar.

### Auswirkung auf die Testdaten

50 MS-Knoten bleiben dauerhaft offen (≈9 % aller offenen Knoten). Versuche, DAR-Varianten
zu bauen, scheitern erwartungsgemäß an der Validierung und wurden zurückgenommen.
Dokumentiert als Kategorie 1 auf der [Testabdeckung-Seite](../kds-testdata/input/pagecontent/testabdeckung.md).

---

## 2. `patternUri` enthält eine Pipe-Versionsangabe

**Profil:** `mii-pr-bildgebung-radiologische-messung`
**Element:** `Observation.component.code.coding.system`

```json
"patternUri": "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701"
```

`Coding.system` ist vom Typ `uri` und nimmt **nur die System-URL** auf; die Version
gehört nach `Coding.version`. Die `system|version`-Pipe-Notation ist ausschließlich in
*Canonical-Referenzen auf ValueSets/CodeSystems* zulässig, nicht in einem `system`-Wert.

**Folge:** Das Pattern ist so nie erfüllbar — eine konforme Instanz müsste den Pipe-String
wörtlich als System-URI führen, was wiederum die Terminologieprüfung bricht.
In den Testdaten wörtlich übernommen (einzige Möglichkeit, das Pattern zu erfüllen);
Kandidat für eine Korrektur.

**Vorschlag:** `patternUri` auf `http://snomed.info/sct` reduzieren und die Version — falls
verbindlich — über ein separates `patternCoding`/`fixedString` auf `.version` ausdrücken.

---

## 3. `MedicationAdministration.dosage.dose` ist ungebunden

Die MII-Medikationsprofile für **MedicationRequest** und **MedicationStatement**
typisieren `dosageInstruction`/`dosage` auf **DosageDE** (`de.fhir.medication#1.0.7`)
und binden die Dosis-Einheit damit an `DosageDoseQuantityDE` (UCUM).

`MedicationAdministration.dosage` ist in FHIR R4 dagegen ein **BackboneElement**, kein
`Dosage`-Datentyp — DosageDE ist dort technisch nicht anwendbar, und die Medikations-IG-DE
enthält kein eigenes MedicationAdministration-Profil.

Das MII-Profil hat die DosageDE-Semantik für `site` und `route` bereits **manuell
nachgezogen** (SNOMED-/EDQM-Slices auf die IPS-ValueSets) — bei `dosage.dose` fehlt
dieser Schritt: Das Element ist MS (inkl. `unit`/`system`/`code`), aber **ungebunden**.

**Folge:** Eine Verabreichung darf Einheiten führen, die eine Verordnung desselben
Medikaments nicht führen dürfte. Für die Testdaten ohne Auswirkung (wir kodieren
durchgängig UCUM), aber eine Inkonsistenz im Modell.

**Vorschlag:** `MedicationAdministration.dosage.dose` an `DosageDoseQuantityDE` binden,
analog zur bereits erfolgten Harmonisierung von `site`/`route`.

---

## 4. Must-Support-Slices, die das Profil selbst unerreichbar gemacht hat

**159 MS-Knoten in 3 Modulen** (Mikrobiologie 156, Bildgebung 2, Kardiologie 1).

Schränkt ein abgeleitetes Profil eine `[x]`-Choice auf einen Typ ein, bleiben die vom
Elternprofil geerbten Slices der **anderen** Typen samt ihrer Must-Support-Flags im
Snapshot stehen — obwohl keine konforme Instanz sie je befüllen kann.

Beispiel `mii-pr-mikrobio-resistenzkategorie-status` (abgeleitet von `ObservationLab`):

| Element | Kardinalität | Typ | MS |
|---|---|---|---|
| `Observation.value[x]` | 1..1 | **nur CodeableConcept** | ✓ |
| `value[x]:valueCodeableConcept` | 1..1 | CodeableConcept (VS: Positive/Negative) | ✓ |
| `value[x]:valueQuantity` | 0..1 | Quantity | ✓ ← unerreichbar |
| `value[x]:valueQuantity.value.extension:quantityPrecision` | 0..1 | Extension | ✓ ← unerreichbar |
| `value[x]:valueRange`, `:valueRatio` | 0..1 | Range/Ratio | ✓ ← unerreichbar |

Der Wert ist auf CodeableConcept festgelegt (Ergebnis: SNOMED *Positive* / *Negative*) —
`valueQuantity` und Geschwister sind damit tot, tragen aber weiter MS.

**Warum das mehr ist als ein Schönheitsfehler:** Jedes Werkzeug, das Konformitätspflichten
aus dem Snapshot ableitet, zählt diese Slices mit. In unserer eigenen Testdaten-Erstellung
hat genau das dazu geführt, dass **14 Beispielinstanzen mit unzulässigem `value[x]`-Typ**
entstanden sind (z.B. `valueQuantity` auf einem CodeableConcept-only-Profil). SUSHI meldet
das nicht — erst der Java-Validator hätte es gefunden. Die Instanzen wurden entfernt und
`scripts/ms-coverage.py` zählt solche Phantom-Pflichten seither nicht mehr mit
(Nenner 13.834 → 13.658).

**Vorschlag:** Beim Einschränken einer Choice die nicht mehr zutreffenden Slices explizit
auf `0..0` setzen (bzw. das MS-Flag entfernen), damit der Snapshot keine unerfüllbaren
Pflichten transportiert. Perspektivisch wäre eine Prüfung im IG Publisher sinnvoll:
*MS-Slice, dessen Typ die Elternchoice ausschließt.*

---

## 5. Randnotiz: OPS-Lücken (kein Profilfehler)

Beim Kodieren der Testdaten sind zwei Katalog-Lücken aufgefallen, die Implementierer
betreffen können — sie sind **keine** Fehler der MII-Profile:

- **Invasive Beatmung Erwachsener** hat im OPS 2024 keinen eigenen Kode; `8-713` kennt
  nur `.0` (HFNC). Die Beatmungsdauer läuft über die DKR-1001-Beatmungsstunden.
  Die Testdaten kodieren deshalb das Weaning (`8-718.73`) statt eines konstruierten `8-71x`.
- **Forcierte Spirometrie** hat ebenfalls keinen eigenen Kode; bei `1-710`
  (Ganzkörperplethysmographie) steht ausdrücklich „Spirometrie und Flussvolumenkurve
  sind im Kode enthalten". Das MS-Element `code.coding:ops` der
  `mii-pr-lungenfunktion-spirometrie-messung` bleibt daher offen.

---

## 6. Bereits gemeldet (Referenz)

| Befund | Ticket |
|---|---|
| Lungenfunktion: Slicing-Defekte (Discriminator `type`/`$this` auf Reference-Slices, Dosis-Slices mit identischem targetProfile, `value`/`$this` ohne Pattern) | [kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45) |
| Soziodemographie: `sba-1` widerspricht der Wertebindung (VS `v2-0136` vs. Invariante auf `v2-0532#Y`) | [kerndatensatz-soziodemographie#24](https://github.com/medizininformatik-initiative/kerndatensatz-soziodemographie/issues/24) |
| IG Publisher: `example/` (Singular) vs. `examples/` (Plural) — Paket-Layout divergiert von der Spezifikation | [HL7/fhir-ig-publisher#1373](https://github.com/HL7/fhir-ig-publisher/issues/1373) |
| fhir-package-store: Name/Version-Split am letzten Bindestrich bricht bei Prerelease-Versionen | [fhir-package-store#15](https://github.com/medizininformatik-initiative/fhir-package-store/pull/15) (PR) |

---

## Reproduktion

Befund 1 und 2 lassen sich gegen jeden BOM-Stand nachrechnen:

```bash
# Profile mit MS-dataAbsentReason bei value[x] min>=1
python3 - <<'EOF'
import json, glob, os
P = os.path.expanduser("~/.fhir/packages/"
    "de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19/package")
for f in glob.glob(P + "/StructureDefinition-*.json"):
    sd = json.load(open(f))
    if sd.get("abstract"): continue
    els = {e["id"]: e for e in sd.get("snapshot", {}).get("element", [])}
    for eid, e in els.items():
        if not eid.endswith(".dataAbsentReason") or not e.get("mustSupport"): continue
        parent = eid[:-len(".dataAbsentReason")]
        vals = [v for k, v in els.items()
                if k == parent + ".value[x]" or k.startswith(parent + ".value[x]:")]
        if vals and vals[0].get("min", 0) >= 1:
            print(sd["url"].split("/")[-1], parent or "(root)")
EOF
```

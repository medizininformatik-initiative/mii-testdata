# Modul-Tickets zum Ballot 2027

Befunde, die nicht als Ballot-Kommentar eingereicht werden, sondern als Ticket an das
jeweilige Modul gehen. Der Grund für die Trennung ist immer derselbe: Ein Befund, der
drei Module betrifft, aber in jedem eine andere Zahl von Profilen und eine andere
Korrektur bedeutet, wird als Sammelkommentar von niemandem übernommen — jede Redaktion
liest die Teile, die sie nicht betreffen, als Rauschen.

Die ausführliche Fassung mit Reproduktionsanleitung steht in
[`ballot-findings-2027.md`](ballot-findings-2027.md), Befund 1.

---

## T1 — ICU: `dataAbsentReason` ist Must-Support, aber per `obs-6` unerfüllbar

**Repository:** `medizininformatik-initiative/kerndatensatz-icu`
**Paket:** `de.medizininformatikinitiative.kerndatensatz.icu#2027.0.0-ballot.3`

### Befund

27 ICU-Profile markieren `Observation.dataAbsentReason` als Must-Support, während
`Observation.value[x]` im selben Profil auf `1..1` steht. Die FHIR-Basisinvariante
`obs-6` lautet `dataAbsentReason.empty() or value.empty()` — beide Elemente dürfen nie
gleichzeitig besetzt sein. Eine Instanz, die `dataAbsentReason` benutzt, verletzt damit
zwangsläufig `value[x] min=1`. Das als Must-Support markierte Element ist nicht
konform befüllbar.

Betroffen sind 45 Must-Support-Knoten in 27 Profilen, davon 18 in Komponenten-Slices:

- **20 Bilanz-Profile** — `mii-pr-icu-bilanz`, zwölf `-ausfuhr-*`
  (Blutverlust, Drainage generisch, Flüssigkeit gesamt, Gallenflüssigkeit,
  Hämofiltration Einzelmesswerte, Magensonde, OP-Drainage, Pankreasdrainage,
  Stuhlgang, Urin, Wunddrainage), sieben `-einfuhr-*` (abgepumpte Muttermilch,
  enterale Flüssigkeit, Flüssigkeit gesamt, Muttermilch, orale Flüssigkeit,
  Säuglingsnahrung, Spendermilch) sowie `-tagesbilanz-fluessigkeit`
- `mii-pr-icu-muv-atemfrequenz`
- **6 Score-Profile** — `mii-pr-icu-score-cam-icu`,
  `mii-pr-icu-score-faces-pain-scale-revised`, `mii-pr-icu-score-gcs`,
  `mii-pr-icu-score-icdsc`, `mii-pr-icu-score-sofa`, `mii-pr-icu-score-zopa`;
  die 18 Komponenten-Slices liegen in `cam-icu`, `icdsc` und `sofa`

### Warum das ein Widerspruch im Modell ist und nicht nur eine Randnotiz

Die Absicht ist in den Score-Profilen selbst ausgeschrieben: Sie definieren
`mii-icu-val-xor-dar` als `value.exists() xor dataAbsentReason.exists()` — entweder
Wert oder Grund. Genau diese Absicht hebelt `value[x] 1..1` aus. Das Modell sagt an
zwei Stellen Gegensätzliches über dieselbe Sache.

Ein konformer Weg, Abwesenheit auszudrücken, existiert im Modell — er ist nur nicht
der markierte. Da `value[x].value` auf `0..1` steht (Pflicht sind allein `unit` und
`code`), validiert eine `Quantity` ohne Zahl mit der Standard-Extension
`data-absent-reason` fehlerfrei; die Variante mit dem `dataAbsentReason`-Element
scheitert dagegen an `value[x] min=1`. Beides am HL7-Java-Validator gegen
`mii-pr-icu-bilanz-ausfuhr-urin` geprüft. Must-Support steht also auf dem
unbenutzbaren der beiden Wege.

### Vorschlag

`value[x]` beziehungsweise `component.value[x]` auf `0..1` setzen und die Pflicht über
die XOR-Invariante durchsetzen. In den Score-Profilen ist diese Invariante bereits
vorhanden; für die Bilanz-Profile und `muv-atemfrequenz` wäre sie analog zu ergänzen.

Derselbe Widerspruch besteht in Mikrobiologie (1 Profil) und Soziodemographie
(4 Profile) und ist dort gesondert gemeldet.

---

## T2 — Mikrobiologie: `dataAbsentReason` ist Must-Support, aber per `obs-6` unerfüllbar

**Repository:** `medizininformatik-initiative/kerndatensatz-mikrobiologie`
**Paket:** `de.medizininformatikinitiative.kerndatensatz.mikrobiologie#2027.0.0-ballot2`

### Befund

`mii-pr-mikrobio-resistenzkategorie-status` markiert `Observation.dataAbsentReason` als
Must-Support, während `Observation.value[x]` auf `1..1` steht. Die FHIR-Basisinvariante
`obs-6` (`dataAbsentReason.empty() or value.empty()`) schließt aus, dass beide Elemente
gleichzeitig besetzt sind. Eine Instanz, die `dataAbsentReason` benutzt, verletzt damit
zwangsläufig `value[x] min=1` — das als Must-Support markierte Element ist nicht
konform befüllbar.

Es ist genau ein Profil und ein Must-Support-Knoten, die Korrektur entsprechend klein.

### Hinweis zur Bewertung

Ein konformer Weg, Abwesenheit auszudrücken, existiert; er ist nur nicht der markierte.
Steht `value[x].value` auf `0..1`, validiert eine `Quantity` ohne Zahl mit der
Standard-Extension `data-absent-reason` fehlerfrei, während die Variante mit dem
`dataAbsentReason`-Element an `value[x] min=1` scheitert (am HL7-Java-Validator
geprüft, an einem gleichartigen ICU-Profil).

Bei diesem Profil kommt hinzu, dass `value[x]` auf `CodeableConcept` eingeschränkt ist
und an ein Ergebnis-ValueSet bindet — ein fehlender Resistenzkategorie-Status ist
fachlich ein realistischer Fall, für den das Modell derzeit keinen gangbaren Ausdruck
anbietet.

### Vorschlag

`value[x]` auf `0..1` setzen und die Pflicht über eine Invariante der Form
`value.exists() xor dataAbsentReason.exists()` durchsetzen. Das ICU-Modul führt eine
solche Invariante bereits unter dem Namen `mii-icu-val-xor-dar`.

Derselbe Widerspruch besteht in ICU (27 Profile) und Soziodemographie (4 Profile) und
ist dort gesondert gemeldet.

---

## T3 — Soziodemographie: `dataAbsentReason` ist Must-Support, aber per `obs-6` unerfüllbar

**Repository:** `medizininformatik-initiative/kerndatensatz-soziodemographie`
**Paket:** `de.medizininformatikinitiative.kerndatensatz.soziodemographie#2027.0.0-ballot`

### Befund

Vier Profile markieren `Observation.dataAbsentReason` als Must-Support, während
`Observation.value[x]` auf `1..1` steht:

- `mii-pr-sdd-betreuungssituation`
- `mii-pr-sdd-haushaltsgroesse`
- `mii-pr-sdd-partnerschaft`
- `mii-pr-sdd-vertrauensperson`

Die FHIR-Basisinvariante `obs-6` (`dataAbsentReason.empty() or value.empty()`) schließt
aus, dass beide Elemente gleichzeitig besetzt sind. Eine Instanz, die
`dataAbsentReason` benutzt, verletzt damit zwangsläufig `value[x] min=1` — das als
Must-Support markierte Element ist nicht konform befüllbar.

### Warum es gerade hier zählt

Die vier Profile erheben Angaben, die Befragte regelmäßig verweigern oder nicht
beantworten können: Betreuungssituation, Haushaltsgröße, Partnerschaft,
Vertrauensperson. „Keine Angabe" ist bei sozialen Merkmalen kein Randfall, sondern ein
erwartbares Ergebnis, und `dataAbsentReason` mit Codes wie `asked-declined` ist genau
dafür gedacht. Das Modell markiert dieses Element als Must-Support und macht es
gleichzeitig unbenutzbar.

### Hinweis zur Bewertung

Ein konformer Weg existiert, ist aber nicht der markierte: Steht `value[x].value` auf
`0..1`, validiert eine `Quantity` ohne Zahl mit der Standard-Extension
`data-absent-reason` fehlerfrei, während die Variante mit dem
`dataAbsentReason`-Element an `value[x] min=1` scheitert (am HL7-Java-Validator
geprüft, an einem gleichartigen ICU-Profil).

### Vorschlag

`value[x]` auf `0..1` setzen und die Pflicht über eine Invariante der Form
`value.exists() xor dataAbsentReason.exists()` durchsetzen. Das ICU-Modul führt eine
solche Invariante bereits unter dem Namen `mii-icu-val-xor-dar`.

Derselbe Widerspruch besteht in ICU (27 Profile) und Mikrobiologie (1 Profil) und ist
dort gesondert gemeldet.

---

## T4 — Bildgebung: Pipe-Versionsangabe in `Coding.system`-Mustern

**Repository:** `medizininformatik-initiative/kerndatensatz-bildgebung`
**Paket:** `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot`

### Befund

Sieben Muster in vier Profilen setzen als `Coding.system` einen Wert, der System-URL
und Version mit einem senkrechten Strich verbindet:

```json
"system": "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701"
```

| Profil | Element | Form |
|---|---|---|
| `mii-pr-bildgebung-anforderung-bildgebung` | `ServiceRequest.code.coding:sct` | `patternCoding.system` |
| `mii-pr-bildgebung-anforderung-bildgebung` | `ServiceRequest.reasonCode.coding:sct` | `patternCoding.system` |
| `mii-pr-bildgebung-radiologische-beobachtung` | `Observation.code.coding:sct` | `patternCoding.system` |
| `mii-pr-bildgebung-radiologische-messung` | `Observation.method.coding:sct` | `patternCoding.system` |
| `mii-pr-bildgebung-radiologische-messung` | `Observation.component.code.coding.system` | `patternUri` |
| `mii-pr-bildgebung-radiologischer-befund` | `DiagnosticReport.code.coding:sct` | `patternCoding.system` |
| `mii-pr-bildgebung-radiologischer-befund` | `DiagnosticReport.conclusionCode.coding:sct` | `patternCoding.system` |

Über die Vererbung in die Snapshots wirken sich diese sieben Deklarationen auf acht
Elementpositionen aus.

`Coding.system` ist vom Typ `uri` und nimmt allein die System-URL auf; die Version
gehört nach `Coding.version`. Die `system|version`-Notation ist ausschließlich in
Canonical-Referenzen auf ValueSets und CodeSystems zulässig, nicht in einem
`system`-Wert.

### Folge

Das Muster ist nicht sinnvoll erfüllbar. Eine konforme Instanz müsste den
Pipe-String wörtlich als System-URI führen — womit jede Terminologieprüfung
fehlschlägt, weil es ein Codesystem dieser URL nicht gibt. In unseren Testdaten haben
wir den String wörtlich übernommen, weil es die einzige Möglichkeit war, das Muster zu
erfüllen; die betroffenen Instanzen sind damit strukturell konform und
terminologisch falsch zugleich.

### Vorschlag

`system` auf `http://snomed.info/sct` reduzieren. Soll die Ausgabe verbindlich sein,
gehört sie als eigener Wert nach `Coding.version` — dort ist
`http://snomed.info/sct/900000000000207008/version/20260701` die richtige Schreibweise.

Ob eine Versionsfestlegung im Profil überhaupt gewollt ist, wäre zu prüfen: Sie bindet
jede konforme Instanz an die SNOMED-Ausgabe vom Juli 2026, auch Daten, die später
erhoben werden.

Dieselbe Schreibweise steht einmal in Lungenfunktion und ist dort gesondert gemeldet.

---

## T5 — Lungenfunktion: Pipe-Versionsangabe in `Coding.system` des Befund-Profils

**Repository:** `medizininformatik-initiative/kerndatensatz-lungenfunktion`
**Paket:** `de.medizininformatikinitiative.kerndatensatz.lungenfunktion#2027.0.0-ballot`

### Befund

`mii-pr-lungenfunktion-befund` setzt auf `DiagnosticReport.conclusionCode.coding:sct`
ein `patternCoding`, dessen `system` System-URL und Version mit einem senkrechten
Strich verbindet:

```json
"system": "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701"
```

`Coding.system` ist vom Typ `uri` und nimmt allein die System-URL auf; die Version
gehört nach `Coding.version`. Die `system|version`-Notation ist ausschließlich in
Canonical-Referenzen auf ValueSets und CodeSystems zulässig.

Es ist eine einzige Deklaration, sie wirkt aber über die Ableitung auf **fünf
Profile**: `mii-pr-lungenfunktion-befund` selbst sowie `-spirometrie`, `-diffusion`,
`-bodyplethysmographie` und `-provokationstest`, die den Snapshot erben. Die Korrektur
an einer Stelle räumt alle fünf ab.

### Folge

Das Muster ist nicht sinnvoll erfüllbar: Eine konforme Instanz müsste den Pipe-String
wörtlich als System-URI führen, womit jede Terminologieprüfung fehlschlägt. Betroffen
ist `conclusionCode` — also die kodierte Beurteilung, das fachlich wichtigste Feld des
Befunds.

### Vorschlag

`system` auf `http://snomed.info/sct` reduzieren und die Version, falls verbindlich,
über `Coding.version` ausdrücken.

Dieselbe Schreibweise steht siebenmal in Bildgebung und ist dort gesondert gemeldet.

---

## Nachrechnen

Die Profilliste je Modul lässt sich gegen jeden BOM-Stand neu erzeugen:

```bash
python3 - <<'EOF'
import json, glob, os, re, collections
P = os.path.expanduser("~/.fhir/packages/"
    "de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19/package")
mod = collections.defaultdict(lambda: {"profile": set(), "knoten": 0})
for f in glob.glob(P + "/StructureDefinition-*.json"):
    sd = json.load(open(f, encoding="utf-8"))
    if sd.get("abstract"): continue
    els = {e["id"]: e for e in (sd.get("snapshot") or {}).get("element", [])}
    for eid, e in els.items():
        if not eid.endswith(".dataAbsentReason") or not e.get("mustSupport"): continue
        parent = eid[:-len(".dataAbsentReason")]
        vals = [v for k, v in els.items()
                if k == parent + ".value[x]" or k.startswith(parent + ".value[x]:")]
        if vals and vals[0].get("min", 0) >= 1:
            m = re.search(r'/(?:ext/)?(?:core/)?modul-([a-z0-9-]+)/', sd.get("url", ""))
            key = m.group(1) if m else "?"
            mod[key]["profile"].add(sd["url"].rsplit("/", 1)[-1])
            mod[key]["knoten"] += 1
for m, d in sorted(mod.items(), key=lambda x: -len(x[1]["profile"])):
    print(f"{m}: {len(d['profile'])} Profile, {d['knoten']} Knoten")
EOF
```

Stand `2027.0.0-ballot.19`: icu 27/45, soziodemographie 4/4, mikrobio 1/1.

Und die Pipe-Versionsangaben aus T4/T5 — hier bewusst über das **Differential**, weil
nur dort steht, wer den Wert wirklich deklariert; über den Snapshot erscheinen auch
die erbenden Profile (13 Positionen statt 8 Deklarationen):

```bash
python3 - <<'EOF'
import json, glob, os
P = os.path.expanduser("~/.fhir/packages/"
    "de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19/package")
n = 0
for f in glob.glob(P + "/StructureDefinition-*.json"):
    sd = json.load(open(f, encoding="utf-8"))
    for e in (sd.get("differential") or {}).get("element", []):
        pc = e.get("patternCoding")
        treffer = (isinstance(pc, dict) and "|" in str(pc.get("system", ""))) or \
                  (isinstance(e.get("patternUri"), str) and "|" in e["patternUri"])
        if treffer:
            n += 1
            print(f"{sd['url'].rsplit('/',1)[-1]}  {e.get('id')}")
print(f"{n} Deklarationen")
EOF
```

Stand `2027.0.0-ballot.19`: 8 Deklarationen — 7 in Bildgebung, 1 in Lungenfunktion.

# 2027-Ballot-Dependency-Upgrade: SUSHI-Fehleranalyse und Auflösung

Stand: 2026-09-21 · Branch `feat/kds-2027-ballot` · Vorgänger-Doku: [2026-dependency-upgrade-errors.md](2026-dependency-upgrade-errors.md)

## Ausgangslage

Umstellung der Dependencies von gemischten 2026er-Einzelmodul-Pins auf die BOM
**`de.medizininformatikinitiative.kerndatensatz.complete` 2027.0.0-ballot.19**
(fat package: bettet die Conformance-Ressourcen aller 21 KDS-Module ein und pinnt
die externen Abhängigkeiten; ICU darin auf `2027.0.0-ballot.3`). Dazu:
`hl7.fhir.uv.sdc` 3.0.0→4.0.0, `de.einwilligungsmanagement` 1.0.2→2.0.4,
`de.basisprofil.r4` 1.5.4→1.6.0 (transitiv), `hl7.terminology.r4` →7.3.0,
`eu.miabis.r4` 0.2.0→1.3.0.

Erster Build (`sushi build .`, SUSHI 3.20.1): **343 Errors / 19 Warnings** bei
731 Instanzen. Verteilung: mikrobio 151, labor 88, icu 71, onkologie 14,
consent 10, Rest 9.

## Fehlerklassen und Auflösung je Modul

### ICU (71 → 0): Canonical-Renames 2025 → 2027.0.0-ballot.3

Die Testdaten standen auf den 2025er-Kurznamen
(`.../modul-icu/StructureDefinition/<kurzname>`). Die 2027er-Profile heißen
durchgängig `mii-pr-icu-*` mit neuen **Subgruppen-Präfixen**:

- Beatmungsparameter: `mii-pr-icu-vent-*`
- Extrakorporale Verfahren: `mii-pr-icu-ect-*`
- Monitoring/Vitalwerte: `mii-pr-icu-muv-*`
- DeviceMetrics: `mii-pr-icu-dm-*` (`devicemetric-…` → `dm-…`, teils gekürzt:
  `dm-eingest-gem-parameter-extrakorporale-verfahren`)
- `icu-device` → `mii-pr-icu-device`
- Schreibweise teils `exspiratorisch` → `expiratorisch`
- **Zusammengelegt**: `inspiratorische-sauerstofffraktion-eingestellt` und
  `-gemessen` → ein Profil `mii-pr-icu-vent-inspiratorische-sauerstofffraktion`

Auflösung: Zwischenstand der 2026er-Migration (Branch `wip/icu2026-crossmodul`)
als Basis übernommen, dann automatisches Fuzzy-Mapping der 44 Rest-Renames
(Skript-generiert, alle eindeutig auflösbar). Danach verbliebene Detailfehler
(Fixed-Coding-Konflikte, Slice-Renames wie `category[Beatmung]`,
`code.coding[loinc]`) einzeln gegen die ballot.3-Profile aufgelöst.

### Laborbefund (88 → 0): Category-Slicing restrukturiert

2026: Slices auf `category.coding` (`loinc-observation`, `observation-category`
bzw. `lab-category`). 2027-ballot: Slices auf **`category` selbst**,
diskriminiert per `$this`-Pattern:

- `mii-pr-labor-laboruntersuchung` (Observation): Slice
  `category:observation-category` (1..1, Pattern `observation-category#laboratory`);
  LOINC 26436-6 bleibt als zusätzliches Coding im selben category-Element erlaubt.
- `mii-pr-labor-laborbefund` (DiagnosticReport): Slice `category:v2-lab`
  (1..1, Pattern `v2-0074#LAB`).

Auflösung: 4 Zeilen in den zentralen RuleSets `AddLabObservation`
(ObservationRuleSet.fsh) und `AddDiagnosticReport` (DiagnosticReportRuleSet.fsh)
— beheben alle 88 Instanz-Fehler.

### Mikrobiologie (151 → 0): alpha.3 → ballot2

1. **Category-Slicing remodeled** (145 Fehler): statt einem
   `category[mibi-category]`-Slice mit drei Coding-Subslices jetzt **zwei**
   category-Slices (2..*): `observation-category` (Pattern
   `observation-category#laboratory`) und `mibi-category` (Pattern `v2-0074#MB`).
   In 54 Instanz-Blöcken ersetzt.
2. **`mii-pr-mikrobio-barlett-score` → `mii-pr-mikrobio-bartlett-score`**
   (Schreibfehler upstream behoben); Instanz-IDs mitgezogen.
3. **`mii-pr-mikrobio-mre-klasse` entfernt**, Nachfolger
   `mii-pr-mikrobio-resistenzkategorie-status` mit neuem Informationsmodell:
   `code` required-bound an CS `mii-cs-mikrobio-resistenzkategorie`
   (mrsa-status/…), `valueCodeableConcept` **1..1** required-bound an SNOMED
   Positive/Negative. MRSA-Instanzen migriert (code=mrsa-status,
   value=Positive; Organismus in note). Die frühere dataAbsentReason-Variante
   ist unter ballot2 strukturell unmöglich (value 1..1) und wurde durch eine
   Negativ-Befund-Instanz ersetzt (Zugewinn: Negative-Coverage).

Hinweis: `mii-pr-mikrobio-probe` ist das einzige 2027er-Profil ohne Snapshot im
Package (kein Buildhindernis für SUSHI aufgetreten).

### ICU-Detailfehler (nach den Canonical-Renames)

- `category[Beatmung]` → `category[kuenstlicheBeatmung]`; 23 bisher ungeslicte
  `category = $sct#40617009`-Regeln in den Slice verschoben (Ausnahme:
  `mii-pr-icu-vent-mittlerer-beatmungsdruck` hat ungeslicte 1..1-category).
- ~35 Display-Angleichungen an die 2027er-Pattern-Codings (SNOMED
  „(observable entity)"-Suffixe, LOINC `Pressure.airway^…`, lange
  MDC-Beschreibungstexte — inkl. eines trailing space in IEEE 151944).
- Codings entfernt, die die 2027er-Profile nicht mehr führen (LOINC auf
  inspiratorische-sauerstofffraktion ×2 und spontanes-atemzugvolumen; IEEE 26668
  bei Drainage — Profil fixiert jetzt 157740). PIP: IEEE 151973→151957.

### Consent (10 → 0)

Slice `category[loinc]` → `category[consentCategory]` (ConsentRuleSet.fsh);
das System zeigt auf `mii-cs-consent-version-modules`.

### Onkologie (14 → 0) und Einzelfehler

- TNM: T/N/M/N-sn-Werte in den `coding[uicc]`-Slice (L/V/Pn/S/y/r/a/m/Stadium
  haben keinen uicc-Slice — dort ungeslict belassen).
- Therapie: StellungZurOp-System → `mii-cs-onko-therapie-stellungzurop`.
- Mamma/NGS (auch mtb): HER2-Displays → „HER2 **Ag** [Interpretation/Presence]…".
- KRK: MRF-CodeSystem `https://radelement.org` (neuer Alias `$RADELEMENT`).
- seltene/BodyMeasurements: Hüft-/Taillenumfang-`code` ist jetzt SNOMED-fixiert
  (Hip/Waist circumference) — SNOMED als coding[0], LOINC als Zweitcoding.
- studien/ServiceRequest: Displays ohne „(procedure)"-Suffix (Pattern).
- bildgebung/DiagnosticReport: `category.coding[sct]` mit SNOMED-Versions-
  Canonical `…/version/20260701` wie im Profil fixiert.
- prozedur: OPS-Seitenlokalisation über Slice-Namen
  `extension[Seitenlokalisation]` statt Roh-URL.
- biobank/Organization: `extension[beschreibung].url` explizit gesetzt (die
  bbmri-eric-SD ist in keinem auflösbaren Package — SUSHI kann die URL nicht
  inferieren).
- ICU-Bundle: Referenzen auf das geparkte Crossmodul-Szenario entfernt
  (Szenario vollständig auf `wip/icu2026-crossmodul`).

### Verbleibende Warnings (14, akzeptiert)

Vorbestehend/upstream: fehlende Extension-SDs aus genomics-reporting
(R5-Inhalte), `miabis-organization-description-extension` (bbmri-eric, nicht
paketiert), `address-de-basis`-Hinweis, seltene-Kopfumfang-Slice-Pfad,
old-style `hl7.fhir.extensions.r5`-Deklaration.

## Neue Module (Testdaten neu erstellt)

_Wird ergänzt: symptom, soziodemographie, kardiologie, lungenfunktion —
Research-Docs unter `docs/research-<modul>.md`._

## Begleitende Änderungen

- **CI** (`.github/workflows/ci.yml`): ICU-`fhir inflate`-Workaround entfernt
  (2027er-Pakete liefern Snapshots; 532/534 StructureDefinitions), SUSHI 3.20.1
  und yq v4.44.3 gepinnt, `ci_java_validation` auf Commit-SHA gepinnt,
  Secret-Presence-Guard ergänzt.
- **`package.json`**: expandierte, exakte BOM-Pins (die BOM selbst ist nicht
  registry-publiziert und für den Java-Validator nicht auflösbar; sushi-config
  nutzt die BOM direkt). Beide Dateien müssen bei Versions-Bumps gemeinsam
  gepflegt werden — Quelle ist immer die BOM-Version.
- **`fhirpkg.lock.json`**: regeneriert (51 Pakete). `fhir restore` (Firely 3.5.0)
  bricht mit „An item with the same key has already been added:
  hl7.fhir.uv.extensions.r4" ab; das Lockfile wurde deshalb deterministisch aus
  der transitiven Auflösung erzeugt (highest-wins je Paket).
- **fhir-package-store**: Branch `add-kds-complete-2027-ballot.19` ergänzt die
  BOM plus sdc 4.0.0, xver-r5.r4 0.1.0, einwilligungsmanagement 2.0.4,
  terminology.r4 7.3.0, extensions.r4 5.3.0, tools.r4 1.2.0 — Voraussetzung für
  den CI-Build.

## Bekannte Restpunkte

- **ICU `2027.0.0` (ohne Suffix) niemals auflösen lassen** — versehentlich
  publiziert, 256 statt 267 Ressourcen, ohne die fünf Score-Profile. Die BOM
  pinnt `2027.0.0-ballot.3`.
- Doppelte Canonicals im Load-Scope durch isik 6.0.0 → kds.base 2026.0.0 und
  gematik-Kette → basisprofil 1.5.x (upstream, kein lokaler Fix möglich).
- SUSHI-Hinweis: `hl7.fhir.extensions.r5` wird automatisch durch
  `hl7.fhir.uv.xver-r5.r4` ersetzt (Deklaration kann bei Gelegenheit umgestellt
  werden).

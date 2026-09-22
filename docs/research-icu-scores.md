# Research: ICU Scores, Pupillenstatus, Bilanz-Einfuhr, Rest-Beatmungsdruecke

Stand: 2026-09-22 · Paket: `de.medizininformatikinitiative.kerndatensatz.icu` **2027.0.0-ballot.3**
(via BOM `de.medizininformatikinitiative.kerndatensatz.complete` 2027.0.0-ballot.19)

Ziel: Schliessen der letzten 29 Profil-Luecken des ICU-Moduls → **ICU 94/94**.
Alle Instanzen haengen (explizite Nutzer-Entscheidung, technische Schicht) am
bestehenden ICU-Patienten `mii-exa-test-data-icu-patient-1` (68 J., COVID-ARDS,
Beatmung + VV-ECMO, Encounter `mii-exa-test-data-icu-encounter-1`,
Periode 2024-05-01..14).

## 1. Inventar der 29 Profile → Instanzen

| # | Profil (`mii-pr-icu-…`) | Instanz(en) | Anmerkung |
|---|---|---|---|
| 1 | `score` | — (abstrakt) | `abstract=true` → ueber abgeleitete Score-Profile abgedeckt, keine direkte Instanz moeglich |
| 2 | `score-gcs` | `…-icu-score-gcs-1` | GCS 8 = E2 V2 M4; Komponenten LOINC 9267-6/9270-0/9268-4, Werte aus GCS-Antwort-VS (LA-Codes) |
| 3 | `score-rass` | `…-icu-score-rass-1` | Code fix SCT 1345050000; Wert LOINC `LA33965-7` (Moderate sedation −3) aus `mii-vs-icu-score-rass` |
| 4 | `score-sofa` | `…-icu-score-sofa-1` | SOFA 9 (Resp 3, Koag 1, Leber 0, Kreislauf 1, ZNS 3, Niere 1); Subscores nur LOINC (s. Findung F3) |
| 5 | `score-cam-icu` | `…-icu-score-cam-icu-1` | positiv (SCT 10828004); Feature 1–3 present, 4 absent; `component.code.text` im Profil fixiert |
| 6 | `score-icdsc` | `…-icu-score-icdsc-1` | ICDSC 6; 8 Pflicht-Komponenten, `code.text` im Profil fixiert (englische Item-Namen) |
| 7 | `score-numerische-ratingskala` | `…-icu-score-nrs-1` | SCT 1284857008, valueInteger 4 |
| 8 | `score-visuelle-analogskala` | `…-icu-score-vas-1` | LOINC 38214-3 + SCT 443394008, 45 mm |
| 9 | `score-wong-baker-faces-schmerzskala` | `…-icu-score-wbf-1` | LOINC 38221-8 + SCT 718581005, 6 {score}; Display "Assessment" vom Profil erzwungen (F6) |
| 10 | `score-faces-pain-scale-revised` | `…-icu-score-fpsr-1` | SCT 1284909003, 6 {score} |
| 11 | `score-zopa` | `…-icu-score-zopa-1` | Eigenes CS `http://dgai.de#DGAI-ZOPA`; Wert present/absent-VS (SCT 52101004) |
| 12 | `untersuchung-pupillenbefund` | `…-icu-pupille-befund-1` | **Grouper**: `hasMember` 9/9 fest gesliced (2× Form, 2× Groesse, 2× direkt, 2× indirekt, 1× Symmetrie) |
| 13 | `untersuchung-pupillenform` | `…-icu-pupille-form-re-1`, `-li-1` | SCT 363954009; Wert LOINC LA24884-1 (Round); bodySite re/li |
| 14 | `untersuchung-pupillengroesse` | `…-icu-pupille-groesse-re-1` (3 mm), `-li-1` (5 mm) | Anisokorie als Nebenbefund |
| 15 | `untersuchung-pupillensymmetrie` | `…-icu-pupille-symmetrie-1` | Wert nicht kodierbar (F5) → `dataAbsentReason=unsupported` |
| 16 | `untersuchung-pupillenlichtreaktion-direkt` | `…-icu-pupille-licht-dir-re-1`, `-li-1` | SCT 45832002; re prompt (LA25441-9), li traege (LA24899-9) |
| 17 | `untersuchung-pupillenlichtreaktion-indirekt` | `…-icu-pupille-licht-ind-re-1`, `-li-1` | SCT 84917001 |
| 18 | `bilanz` | `…-icu-bilanz-status-1` | `abstract=false` → direkte Instanz; SCT 251856003 (Fluid balance status) |
| 19 | `bilanz-einfuhr-muttermilch` | `…-icu-bilanz-einf-mumi-1` | NICU-Kommentar in FSH (s. u.) |
| 20 | `bilanz-einfuhr-abgepumpte-muttermilch` | `…-icu-bilanz-einf-mumi-abgep-1` | NICU-Kommentar |
| 21 | `bilanz-einfuhr-spendermilch` | `…-icu-bilanz-einf-spendermilch-1` | NICU-Kommentar |
| 22 | `bilanz-einfuhr-saeuglingsnahrung` | `…-icu-bilanz-einf-saeugling-1` | NICU-Kommentar |
| 23 | `bilanz-einfuhr-orale-fluessigkeit` | `…-icu-bilanz-einf-oral-fluess-1` | SCT 251853006 + LOINC 9000-1 |
| 24 | `vent-maximaler-inspiratorischer-beatmungsdruck` | `…-icu-vent-pmax-insp-1` | SCT 27913002 + IEEE 151973, 28 cmH2O; LOINC-Slice ohne Pattern (F4) |
| 25 | `vent-mittlerer-inspiratorischer-beatmungsdruck` | `…-icu-vent-pmean-insp-1` | SCT 698821009 + LOINC 60952-9 + IEEE 151975, 14 cmH2O — validiert fehlerfrei |
| 26 | `vent-plateau-beatmungsdruck` | `…-icu-vent-pplat-1` | SCT 698822002 + LOINC 76259-1 + IEEE 152424, 22 cmH2O — validiert fehlerfrei |
| 27 | `parameter-von-beatmung` | `…-icu-vent-param-generisch-1` | `abstract=false` → direkte Instanz; SCT 426102006 (inspiratorisches Minutenvolumen) |
| 28 | `parameter-von-extrakorporalen-verfahren` | `…-icu-ect-param-generisch-1` | `abstract=false` → direkte Instanz; SCT 79063001 (Sweep-Gasfluss, abends) — validiert fehlerfrei |
| 29 | `muv-koerperlaenge` | `…-icu-muv-laenge-1` | Liegend 168 cm; Konflikt mit `bodyheight`-Magic-Code (F7) |

Milch-/Saeuglingsprofile (19–22) tragen im FSH den Kommentar:
`// Technische Abdeckung — klinisch plausibles NICU-Szenario ist als eigenes Patientenbundle vorgemerkt (.claude/todo)`

Abstract-Entscheidungen (geprueft via `abstract` im Snapshot):
- `mii-pr-icu-score`: **abstract=true** → dokumentiert, keine Instanz.
- `mii-pr-icu-bilanz`, `mii-pr-icu-parameter-von-beatmung`,
  `mii-pr-icu-parameter-von-extrakorporalen-verfahren`: **abstract=false** → je eine direkte Instanz.

## 2. MS-Abdeckung

Alle neuen Instanzen setzen: `status`, `category` (inkl. Slices), `code` (alle
Pflicht-Coding-Slices mit Pattern-Displays wortgleich), `subject`,
**`encounter`** (MS, in den Bestandsinstanzen bislang nicht gesetzt),
`effectiveDateTime`, `value[x]` bzw. `dataAbsentReason`, `bodySite` (Pupillen),
`component`-Slices (GCS/SOFA/CAM-ICU/ICDSC), `hasMember` (Pupillenbefund 9/9),
`partOf` (Vent → Beatmungs-Prozedur, ECT → ECMO-Prozedur) sowie **`device`**
(Vent-Druecke + generische Parameter → DeviceMetric `…-vent-dm-param-1` /
`…-ect-dm-param-1`). `performer`/`issued`/`interpretation` (MS 0..x) bleiben
leer — keine Praktiker-/Organisationsressourcen im ICU-Bundle.

Klinische Koherenz (soweit frei waehlbar): Sedierungs-/Delir-Szenario am
2024-05-06 — RASS −3 (08:00), GCS 8 (08:15), CAM-ICU positiv (08:30),
ZOPA present (08:45), SOFA 9 (09:00), Schmerzskalen 10:00–10:15 (NRS 4,
VAS 45 mm, WBF 6, FPS-R 6), ICDSC 6 (20:00), Pupillenstatus 07:30 mit
Anisokorie. Beatmungsdruecke am 2024-05-05 08:00 konsistent zu den
bestehenden Vent-Werten (PEEP 8 → Pplat 22 → Pmax 28, lungenprotektiv unter ECMO).

## 3. Validierung (Java-Validator, `-ig complete-2027.0.0-ballot.19.tgz -ig de.basisprofil.r4#1.6.0 -tx n/a`)

- 33 Dateien (28 neue Instanzen + 4 weitere + ICU-Bundle) validiert.
- **Fehlerfrei (0 Errors):** rass, alle 10 Pupillen-Instanzen (Grouper im
  Bundle-Kontext — standalone koennen die `hasMember`-Referenzen nicht
  aufgeloest werden), alle 6 Bilanz-Instanzen, pmean-insp, pplat,
  ect-param-generisch.
- ICU-Bundle: Baseline (HEAD, ohne neue Instanzen) **23 Errors** → neu
  **197 Errors**. Das Delta besteht vollstaendig aus den unten
  dokumentierten Upstream-Befunden (F1–F7) und `-tx n/a`-Artefakten (F8);
  keine Findung liess sich durch Aenderung unserer Instanzdaten beheben
  (Gegenprobe: pmean/pplat mit identischer Instanz-Struktur, aber
  vollstaendigen Slice-Patterns im Profil, validieren fehlerfrei).

## 4. Upstream-Befunde (fuer Ballot-Kommentar / Modul-Team ICU geeignet)

**F1 — Score-Profile: `code.coding`-Slices ohne auswertbaren Diskriminator.**
Slicing `pattern:$this`, aber die Slice-Roots (`coding:loinc`, `:sct`,
`:ieee11073`) tragen kein `patternCoding` — Pattern liegen nur auf den
Kind-Elementen `.system`/`.code`. Der Validator meldet pro Coding und Slice
"Slicing kann nicht ausgewertet werden … hat keinen fixed Value, kein Binding
oder existence assertions". Betroffen: gcs, numerische-ratingskala,
visuelle-analogskala, faces-pain-scale-revised (nur loinc/ieee), zopa,
icdsc (loinc/ieee); sofa/cam-icu nur beim ieee11073-Slice. **Fix upstream:**
`patternCoding` (system+code) auf den Slice-Root legen — wie bei den
Bilanz-/Vent-Profilen, die sauber validieren.

**F2 — ICDSC/CAM-ICU/GCS/SOFA: `component`-Slices ohne Diskriminatorwert.**
Slicing `pattern:code`, aber kein `patternCodeableConcept` auf
`component:<slice>.code` (bei ICDSC/CAM-ICU ist stattdessen nur
`code.text` fixiert, bei GCS/SOFA liegen die Patterns auf
`code.coding.system/.code`). Folge: 125 nicht auswertbare Slice-Zuordnungen
im Bundle; die ICDSC-Pflicht-Slices (8× min=1) sind fuer den Validator prinzipiell
nie erfuellbar. **Fix upstream:** `patternCodeableConcept` auf `component.code`.

**F3 — SOFA-Subscores: SNOMED-Platzhalter `xxx`.**
`component:<organ>.code.coding:sct` hat `patternCoding.code="xxx"` (Display
"SOFA Subscore - …") bei gleichzeitig `coding 2..2` und `sct 1..1` — ein
konformes Instanziieren wuerde den ungueltigen SNOMED-Code "xxx" erzwingen.
Unsere Instanz fuehrt nur die LOINC-Subscore-Codes (96823-0, 96824-8, 96825-5,
96826-3, 96827-1, 96828-9). **Fix upstream:** echte SNOMED-Codes eintragen
oder sct-Slice auf 0..1 setzen.

**F4 — `vent-maximaler-inspiratorischer-beatmungsdruck`: loinc-Slice ohne Pattern.**
Anders als bei pmean/pplat traegt der loinc-Slice hier nur ein Binding, kein
`patternCoding`; die sct-/IEEE-Patterns enthalten zudem kein `system`. Unter
`-tx n/a` matcht dadurch jedes Coding mehrere Slices ("stimmt mit mehr als
einem Slice ueberein") und der Pflicht-Slice IEEE-11073 wird nicht erkannt.
**Fix upstream:** `patternCoding` mit system+code wie bei den Schwesterprofilen
(LOINC-Kandidat: 60951-1 "Maximal inspiratory pressure").

**F5 — `untersuchung-pupillensymmetrie`: Wert nicht kodierbar.**
`value[x]:valueCodeableConcept.coding` ist `closed` gesliced, definiert aber
**keine** Slices → jedes Coding verletzt das Slicing; gleichzeitig required
Binding auf `mii-vs-icu-code-observation-pupillensymmetrie` (SCT 301943000 /
13045009). Ein kodierter Wert ist damit unmoeglich; unsere Instanz nutzt
`dataAbsentReason=unsupported`, der Befund (Anisokorie) steckt in den beiden
Groessen-Instanzen. **Fix upstream:** Slicing entfernen oder Slices definieren.

**F6 — Wong-Baker: Category-Display "Assessment".**
`category`-Pattern erzwingt Display "Assessment" fuer
`observation-category#survey`; der Terminologie-Check verlangt "Survey" →
unvermeidbarer Display-Fehler in jeder konformen Instanz. Zudem weicht das
Profil stilistisch ab (Grossschreibung der Slices `Loinc`/`Snomed`, keine
assessment-scale-Kategorie, kein encounter-MS) — wirkt aelter als die
uebrigen ballot.3-Scores.

**F7 — `muv-koerperlaenge` erbt `bodyheight`-Magic-Code.**
Profilkette (via gematik `sd-mii-icu-monitoring-und-vitaldaten`) endet im
R4-VitalSigns-`bodyheight`, das LOINC **8302-2** verlangt; das ICU-Profil
pinnt aber LOINC **8306-3** (liegend). Instanzen muessten beide Codings
fuehren; ein zusaetzliches Coding per Index wuerde bei uns SUSHI-Warnungen
ausloesen (gleiches Muster wie bestehende Befunde bei atemfrequenz 9279-1
und arterieller-blutdruck 85354-9 im Bestand). **Fix upstream:** 8302-2 als
zusaetzlichen fixen Slice aufnehmen oder Ableitung korrigieren.

**F8 — `-tx n/a`-Artefakte (lokal, kein Upstream-Fehler):**
(a) `Device.deviceName.type=#manufacturer-name` (gueltiger R4-Code) scheitert
an der System-URI-Inferenz → die Devices gelten als nicht-konform, wodurch
unsere 5 neuen `device`-Referenzen (Vent/ECT → DeviceMetric) Kaskadenfehler
"kein passendes Profil" erzeugen (Baseline enthaelt dieselbe Kaskade bei
`DeviceMetric.source`). (b) Binding-basierte Slice-Diskriminierung der
Eltern-Profile (`parameter-von-beatmung`, `-extrakorporalen-verfahren`)
ist ohne TX-Server nicht entscheidbar → "stimmt mit mehr als einem Slice
ueberein". Mit echtem Terminologieserver (CI) sollten beide Klassen
verschwinden.

**F9 — Kaputte Score-Range-Constraints (SOFA/ICDSC).**
`sofa-score-range: valueInteger >= 0 and valueInteger <= 24` und
`icdsc-score-range: value >= 0 and value <= 8` referenzieren im
FHIRPath-Kontext des Elements nicht existierende Kind-Elemente → Ausdruck
ergibt leer → Constraint schlaegt fuer **jeden** Wert fehl (auch SOFA 9,
ICDSC 6). **Fix upstream:** `$this >= 0 and $this <= …`.

**F10 — Paket-Beispiele teils selbst nicht konform** (Kontext, kein Blocker):
`mii-exa-icu-score-gcs`/`-faces-pain-scale-revised` haben `valueQuantity`
ohne `value` und den Zahlenwert im UCUM-`code`; `mii-exa-icu-untersuchung-pupillenbefund`
hat `hasMember 0` (Profil verlangt 9); das direkte Lichtreaktions-Beispiel
nutzt SCT 113147002 statt des fixierten 45832002. Fuer sofa, cam-icu, icdsc,
zopa, wong-baker liefert das Paket keine Beispiele.

Weitere Kuriositaet: Der VS-Name `mii-vs-icu-code-oservation-pupillenform-loinc`
(Tippfehler "oservation") und die Canonical `…/ValueSet/present-absent` bzw.
`…/ValueSet/cam-icu-result` ohne `mii-vs-icu-`-Prefix; ausserdem weichen die
Pattern-Displays der Milchprofile (z. B. 1204299001 "Measured volume of intake
of breast milk") von den Displays im zugehoerigen ValueSet ("… of maternal
milk") ab — Instanzen muessen dem Profil-Pattern folgen.

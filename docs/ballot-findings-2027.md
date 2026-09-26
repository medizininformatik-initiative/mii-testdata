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

### Nachtrag: Der konforme Weg existiert — er ist nur nicht der markierte

Abwesenheit *lässt* sich in diesen Profilen ausdrücken, nur über einen anderen
Mechanismus: Da `value[x].value` auf `0..1` steht (Pflicht sind nur `unit` und `code`),
ist eine Quantity ohne Zahl, aber mit der Standard-Extension
`http://hl7.org/fhir/StructureDefinition/data-absent-reason`, vollständig konform.
Am Java-Validator gegen `mii-pr-icu-bilanz-ausfuhr-urin` geprüft:

| Variante | Ergebnis |
|---|---|
| `Observation.dataAbsentReason` gesetzt, `value[x]` weggelassen | **Fehler** — `value[x]: mindestens erforderlich = 1, aber nur gefunden 0` |
| `valueQuantity` mit `unit` + `code`, ohne Zahl, mit DAR-**Extension** | **0 Fehler** |

Das verschiebt die Bewertung: Es ist nicht nur eine widersprüchliche Kardinalität,
sondern ein Modell, das den **unbenutzbaren** Weg als Must-Support markiert und den
benutzbaren ungeflaggt danebenstehen lässt. Wer die Konformitätspflichten aus dem
Snapshot ableitet, wird auf den falschen Mechanismus gelenkt.

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

## 5. Platzhalter-Codes (`TODO`, `xxx`) in publizierten Ballot-Profilen

**62 Elemente in 21 Profilen** tragen als `patternCoding` einen Platzhalter statt eines
echten Codes:

| System | Platzhalter | Vorkommen |
|---|---|---:|
| `http://snomed.info/sct` | `TODO` | 35 |
| `http://loinc.org` | `TODO` | 21 |
| `http://snomed.info/sct` | `xxx` | 4 |
| `http://snomed.info/sct` | `xxxx` | 2 |

Betroffen sind **Lungenfunktion** (56 Elemente, u.a. `VA`, `KCOc`, `DLCOc`, `sG_Total`,
`MEF`, `R_Effektiv`, `R_Spezifisch`, `RV_TLC`, `Diffusion`, `Bodyplethysmographie`,
`Provokationstest`) und **ICU** (6 Elemente: **alle sechs SOFA-Subscores** tragen
`sct#xxx` bzw. `sct#xxxx`, bei korrekt ausformulierten Displays wie
„SOFA Subscore - Cardiovascular").

Schwerpunkt sind die Komponenten `predicted` und `percentPredicted` sowie einzelne
Hauptcodes.

**Warum das die Elemente unbenutzbar macht:** Ein `patternCoding` verlangt, dass jede
Codierung im Slice dem Muster entspricht. Wer die Komponente befüllt, müsste also
wörtlich `code: "TODO"` schreiben — was jede Terminologieprüfung zu Recht ablehnt. Die
einzige konforme Alternative ist, das Element wegzulassen. Die betroffenen
Must-Support-Elemente sind damit nicht erfüllbar.

**Es ist keine Terminologielücke, sondern unfertige Redaktion.** Die Codes existieren,
und das Modul verwendet sie an anderer Stelle bereits:

- `mii-pr-lungenfunktion-va` hat den SNOMED-Code korrekt gesetzt
  (`251953007` „Alveolar volume (observable entity)") — nur das LOINC-Slice steht auf `TODO`.
- Für die Predicted-Komponenten führt das Modul in seinen eigenen ValueSets reale
  LOINC-Codes: `19861-4` „Total lung capacity Predicted", `19910-9` „Diffusion
  capacity.carbon monoxide Predicted", `98130-8`, `19915-8`, `98088-8`
  „Vital capacity/predicted VC".

Die Codes müssten also nur aus den vorhandenen ValueSets in die Pattern übernommen
werden. Eine konkrete Zuordnung je Parameter steht in
[vorschlag-lufu-codes.md](vorschlag-lufu-codes.md); die am Terminologieserver
erhobene IEEE-11073-Alternative in [ieee11073-lufu-mapping.md](ieee11073-lufu-mapping.md).

Wichtig für die Bewertung: Ein Teil der Platzhalter lässt sich **durch kein Codesystem**
auflösen. *Prozent vom Soll* existiert weder in MDC noch — für die
bodyplethysmographischen Größen — in SNOMED oder LOINC; dort ist die Modellierung als
abgeleitete Größe der Ausweg. Die Diffusionsparameter (DLCO, KCO und ihre
Hb-korrigierten Varianten) sind in MDC gar nicht darstellbar, weil die Nomenklatur kein
Kohlenmonoxid als Atemgas kennt.

### Die Platzhalter blockieren nicht nur Coverage — sie machen Profile unvalidierbar

Bei den ICU-Scores kommt ein zweiter Defekt hinzu, und zusammen ergeben sie einen
Totalausfall. `mii-pr-icu-score-sofa` und `-gcs` slicen `Observation.component` mit

```
discriminator: { type: pattern, path: code }   rules: open
```

Kein einziger Slice definiert jedoch ein `patternCodeableConcept` auf
`component.code` selbst — die Muster sitzen eine Ebene tiefer auf
`code.coding:loinc` und `code.coding:sct`. Der Validator kann die Komponenten keinem
Slice zuordnen und meldet für **jede** „Slicing kann nicht ausgewertet werden".

Gemessen an vier Bundles: **132 Fehler, davon 114 auf drei SOFA-Observations und 18 auf
GCS** — identisch mit und ohne Terminologieserver. Es ist also kein
Terminologie-Artefakt, sondern ein reiner Strukturdefekt. Nebenwirkung: Der Validator
baut über alle Bundles eine Slicing-Fehlerübersicht auf und läuft dabei in den
`OutOfMemoryError` (`errorSummaryForSlicingAsHtml`); unsere CI musste den Heap auf 14 GB
heben, um überhaupt ein Ergebnis zu bekommen.

**Die Codes sind vorhanden und korrekt.** Jeder Slice trägt bereits den passenden
LOINC-Code für seinen Subscore:

| Slice | LOINC | SNOMED |
|---|---|---|
| respiratory | `96823-0` | `xxxx` |
| coagulation | `96824-8` | `xxx` |
| hepatic | `96825-5` | `xxx` |
| cardiovascular | `96826-3` | `xxx` |
| neurological | `96827-1` | `xxxx` |
| renal | `96828-9` | `xxx` |

Den Diskriminator auf `code.coding.code` zu ziehen — oder ein
`patternCodeableConcept` mit dem LOINC-Coding direkt auf `component:*.code` zu setzen —
und die SNOMED-Slices zu entfernen macht aus 132 Fehlern null, ohne dass ein einziger
Code recherchiert werden muss.

**Vorschlag:** Vor dem Ballot-Abschluss die 56 Platzhalter auflösen. Ergänzend ein
Release-Gate, das publizierte Pakete auf `TODO`/`xxx`/`TBD` in `fixed*`/`pattern*`
prüft — der Fund lässt sich mit dem Skript unten in Sekunden reproduzieren.

---

## 6. Physikalisch falsche Einheiten-Pattern in der Lungenfunktion

Mehrere Profile fixieren per `patternString`/`patternCode` eine Einheit, die zur
gemessenen Größe nicht passt. Weil es ein **Pattern** ist, muss jede konforme Instanz
sie übernehmen — die Testdaten tragen die falschen Einheiten also zwangsläufig.

| Profil | Element | Pattern | fachlich richtig |
|---|---|---|---|
| `mii-pr-lungenfunktion-gewicht` | `value[x].unit` **und** `component:predicted…unit` | `ug` | `kg` |
| `mii-pr-lungenfunktion-bf` (Atemfrequenz) | `component:predicted…unit` | `L` | `/min` |
| `mii-pr-lungenfunktion-hb` (Hämoglobin) | `component:predicted…unit` | `L` | `g/dL` (wie am Messwert korrekt gesetzt) |
| `mii-pr-lungenfunktion-sg-total` | `value[x].unit` / `component:predicted…unit` | `/kPA*s` / `/kPA.s` | `/(kPa.s)` |

### Die Profile widersprechen ihrem eigenen LOINC-Code

Bei zwei der Fälle pinnt dasselbe Profil einen LOINC-Code, dessen Langname die
physikalische Property benennt — und die widerspricht der gesetzten Einheit:

| Profil | gepinnter LOINC-Code | LOINC-Langname | Einheit im Profil |
|---|---|---|---|
| `…-hb` | `718-7` | Hemoglobin **[Mass/volume]** in Blood | Sollwert `L` (reines Volumen) |
| `…-bf` | `9279-1` | Respiratory **rate** | Sollwert `L` (Volumen statt Rate) |

Der Code sagt also selbst, welche Art von Größe gemeint ist. Für das Hämoglobin hat das
Profil die Einheit am **Messwert** folgerichtig auf `g{Hemoglobin}/dL` gesetzt und nur
am **Sollwert** vergessen — der Widerspruch ist damit innerhalb desselben Profils
sichtbar. (Geprüft gegen LOINC 2.83 auf dem SU-TermServ; die Property
`EXAMPLE_UCUM_UNITS` ist dort nicht geladen, der Langname trägt die Aussage aber
bereits.)

Drei weitere Beobachtungen:

**Nicht geerbt, sondern je Profil einzeln gesetzt.** Die Ableitungskette widerlegt die
naheliegende Vermutung: `-gewicht` und `-hb` basieren direkt auf `Observation`, `-bf` auf
`observation-de-vitalsign-atemfrequenz`; keines der drei leitet von
`MII_PR_Lungenfunktion_Volumen` ab. Die Einheiten stehen also in jedem Profil einzeln —
beim Hämoglobin sichtbar inkonsistent innerhalb desselben Profils: Der Messwert trägt
korrekt `g{Hemoglobin}/dL`, nur der Sollwert steht auf `L`.

**Beim Körpergewicht kommt hinzu, dass gleich zwei passende Profile existieren und beide
umgangen werden.** FHIR-Core `bodyweight` (aus `vitalsigns`) bindet
`Observation.valueQuantity.code` **required** an `ucum-bodyweight` — ein ValueSet mit genau
drei Codes: `kg`, `g`, `[lb_av]`. `ug` wäre dort **abgelehnt** worden. Alternativ bietet
`de.basisprofil.r4` das Profil `observation-de-vitalsign-koerpergewicht` mit den Bindungen
`VitalSignDE_Body_Weigth_UCUM` und `UcumVitalsCommonDE`. Dass das Modul die
Vitalparameter-Profile kennt, ist belegt — `-bf` leitet von
`observation-de-vitalsign-atemfrequenz` ab. Beim Gewicht wurde stattdessen von blankem
`Observation` abgeleitet und die Einheit neu deklariert; dabei ist `ug` entstanden.
Das Profil hat zudem keine Code-Bindung (nur das breite `-observable`-ValueSet), eine
nichtssagende Beschreibung („Dieses Beobachtung beschreibt eine Gewichtsressource") und
**kein anderes Profil verweist darauf**.

**Beim Körpergewicht ist es keine falsche Einheit, sondern ein Faktor 10⁹.** `ug`
(Mikrogramm) ist gültiges UCUM, ein Patient wiegt damit rechnerisch Mikrogramm.

**Bei `sg-total` kommen zwei Fehler zusammen:** `kPA` statt `kPa` — UCUM ist
case-sensitiv, `Pa` ist das Pascal, `PA` existiert nicht — und zusätzlich schreiben
Messwert und Sollwert den Ausdruck unterschiedlich (`*` gegen `.`). Selbst nach
Korrektur der Groß-/Kleinschreibung wäre die Klammerung zu prüfen; der korrekte
Ausdruck für die spezifische Conductance ist `/(kPa.s)`.

### Warum ein simples Terminologie-Gate hier nicht reicht

Naheliegend wäre, `patternString` auf `Quantity.unit` gegen UCUM zu validieren. Der
Terminologieserver prüft an dieser Stelle aber gegen die **enumerierte Liste
`ucum-common`** (1.364 Codes), nicht gegen die UCUM-Grammatik. Das trennt die vier
Fälle in zwei Gruppen:

| Einheit | in `ucum-common`? | Befund |
|---|---|---|
| `/kPA*s`, `/kPA.s` | nein | **syntaktisch** falsch — ein Gate fängt es |
| `ug` (Körpergewicht), `L` (Atemfrequenz, Hb-Soll) | **ja** | syntaktisch tadellos, **semantisch** falsch — ein Gate sieht nichts |

Umgekehrt erzeugt die Liste Fehlalarme: Der **korrekte** Hämoglobin-Messwert
`g{Hemoglobin}/dL` steht nicht darin, weil annotierte UCUM-Ausdrücke in der
Kurzliste fehlen — ebenso `/(kPa.s)` und `{score}`.

**Vorschlag:** Erstens die Einheiten-Pattern der abgeleiteten Profile fachlich gegen
die jeweilige Größe prüfen — das ist der eigentliche Fehler und keine Maschine nimmt
ihn ab. Zweitens ein Release-Gate mit einem echten UCUM-Parser statt einer
Listenprüfung, sonst tauscht man übersehene Fehler gegen Fehlalarme. Drittens, als
billige Ergänzung mit hoher Trefferquote: eine Plausibilitätsregel, die meldet, wenn
ein abgeleitetes Profil die Einheit seines Elternprofils **unverändert** übernimmt,
obwohl es die Größe wechselt — genau das ist hier dreimal passiert.

---

## 7. Randnotiz: OPS-Lücken (kein Profilfehler)

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

## 8. `patternString` auf `category.coding.display` fixiert ein falsches Display

`mii-pr-icu-score-wong-baker-faces-schmerzskala` legt im Differential fest:

```json
{ "path": "Observation.category.coding.display", "patternString": "Assessment" }
```

Das Profil bindet `Observation.category` aber an `observation-category`, und der
dort einzig sinnvolle Code `survey` heisst in THO **`Survey`**. Damit stehen sich
zwei Anforderungen desselben Profils gegenueber:

- Wer `"Survey"` schreibt, verletzt den `patternString` — SUSHI bricht mit
  *„Cannot assign Survey to this element; a different string is already assigned"*
  ab, das Profil laesst die Instanz also gar nicht erst entstehen.
- Wer `"Assessment"` schreibt, erfuellt das Pattern und bekommt vom Validator
  *„Wrong Display Name 'Assessment' for …#survey. Valid display is 'Survey'"*.

**Es gibt keine konforme Instanz.** Genau dieser Widerspruch ist uns beim Beheben
der Display-Fehler aufgefallen: Die Korrektur `Assessment` → `Survey` war die
richtige und hat den Build zerbrochen.

Der Fehler ist zugleich ein Muster, das grundsaetzlich nicht in ein Profil
gehoert. `display` ist eine Anzeigehilfe des Terminologieservers, keine
Datenzusage; sobald ein Profil sie festschreibt, konkurriert es mit dem
CodeSystem — und verliert, wann immer dort eine andere Schreibweise oder eine
Uebersetzung gepflegt wird. Das Pattern haengt hier ausserdem an
`category.coding.display` ohne Slice-Bezug, trifft also **jede** Kategorie-Codierung
der Ressource, auch die SNOMED-Codierung `273249006`.

### Vorschlag

`Observation.category.coding.display` ersatzlos aus dem Differential entfernen.
Wer die Kategorie festlegen will, tut das ueber `patternCodeableConcept` am
Slice — so, wie es die uebrigen ICU-Score-Profile (`mii-pr-icu-score`,
`-sofa`, `-gcs`, `-cam-icu`, …) bereits tun.

### Auswirkung auf die Testdaten

`mii-exa-test-data-patient-1-icu-score-wbf-1` schreibt `"Assessment"`, weil das
die einzige baubare Variante ist, und traegt den Validierungsfehler sichtbar mit.
Er ist in den [Known Issues](https://medizininformatik-initiative.github.io/mii-testdata/known-issues.html)
als nicht behebbar ausgewiesen und **nicht** per Advisor unterdrueckt — ein
einzelner, benannter Fehler ist ehrlicher als eine Regel, die kuenftige echte
Display-Fehler mitverdeckt.

---

## 9. Bereits gemeldet (Referenz)

| Befund | Ticket |
|---|---|
| Lungenfunktion: Slicing-Defekte (Discriminator `type`/`$this` auf Reference-Slices, Dosis-Slices mit identischem targetProfile, `value`/`$this` ohne Pattern) | [kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45) |
| Soziodemographie: `sba-1` widerspricht der Wertebindung (VS `v2-0136` vs. Invariante auf `v2-0532#Y`) | [kerndatensatz-soziodemographie#24](https://github.com/medizininformatik-initiative/kerndatensatz-soziodemographie/issues/24) |
| IG Publisher: `example/` (Singular) vs. `examples/` (Plural) — Paket-Layout divergiert von der Spezifikation | [HL7/fhir-ig-publisher#1373](https://github.com/HL7/fhir-ig-publisher/issues/1373) |
| fhir-package-store: Name/Version-Split am letzten Bindestrich bricht bei Prerelease-Versionen | [fhir-package-store#15](https://github.com/medizininformatik-initiative/fhir-package-store/pull/15) (PR) |
| HL7 Java-Validator: `advisor.json` kann Fehler in Bundle-Eintraegen nicht adressieren — der Pfad lautet dort `Bundle.entry[82].resource/*Observation/<id>*/.result` und traegt Index und Ressourcenidentitaet, laesst sich also nicht als feste Regel schreiben; der Advisor vergleicht den ganzen Pfad, kein Suffix. Gemessen: von 440 `MatchMultiple`-Fehlern an Einzeldateien werden 434 unterdrueckt, von den 440 gleichartigen in Bundles **keiner**. Damit liegt die Obergrenze des Formats bei rund 50 %. | noch zu melden (org.hl7.fhir.core) |
| HL7 Java-Validator: laeuft ohne `-Xmx` beim Validieren von 1202 Instanzen gegen 33 IGs in `OutOfMemoryError` (JVM-Default = ¼ RAM, also 4 GB auf einem CI-Runner). Der wiederverwendbare MII-Workflow `ci_java_validation.yml` setzt keinen Heap und laesst sich von aussen keinen setzen (`uses:`-Jobs nehmen kein `env:`), weshalb dieses Repo einen eigenen Validierungs-Workflow braucht. Mit `-Xmx14g` laeuft derselbe Satz in 85 Sekunden. | noch zu melden (kerndatensatz-meta) |

---

## Reproduktion

Befund 1 und 2 lassen sich gegen jeden BOM-Stand nachrechnen:

```bash
# Profile mit MS-dataAbsentReason bei value[x] min>=1
python3 - <<'EOF'
import json, glob, os, re
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

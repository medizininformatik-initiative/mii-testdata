# Testabdeckung - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Testabdeckung**

## Testabdeckung

# Testabdeckung

Diese Seite definiert den Abdeckungsanspruch der Testdaten und zeigt den gemessenen Stand — immer bezogen auf **einen konkreten Stand des MII Kerndatensatz complete** (BOM), gegen den gebaut und gemessen wird (siehe Bezugsstand unten).

### Das Abdeckungsmodell

Die Testdaten folgen einem dreistufigen Vertrag, jeweils gemessen gegen die Profil-Snapshots des gepinnten BOM-Stands:

**1. Profil-Abdeckung** — Jedes instanziierbare Profil der BOM hat mindestens eine Beispielinstanz, die es per `meta.profile` deklariert. Abstrakte Profile gelten über ihre abgeleiteten Profile als abgedeckt.

**2. Must-Support-Abdeckung** — Jedes MS-Element eines genutzten Profils ist in **mindestens einer** Instanz dieses Profils befüllt. Daraus folgen bewusst **Varianten-Instanzen**, wo ein einzelnes Beispiel nie alle MS-Elemente tragen kann:

* **Choice-Varianten**: sind mehrere `value[x]`-/`onset[x]`-Ausprägungen MS (z.B. `abatementAge` **und** `abatementDateTime`), braucht es je Ausprägung eine Instanz.
* **Slice-Alternativen**: schließen sich MS-Slices gegenseitig aus (z.B. `medicationReference` vs. `medicationCodeableConcept`), deckt je eine Instanz einen Zweig ab.
* **`dataAbsentReason`**: ist DAR selbst MS, gehört eine Absent-Variante ins Testgut — **repräsentativ je Profilfamilie** (z.B. eine Score-DAR für alle ICU-Scores, eine Komponenten-DAR für die Patho-Grouper), nicht je Profil. DAR belegt die Systemfähigkeit „fehlender Wert", nicht jede einzelne Ausprägung.

**3. Invarianten-Abdeckung** — Für Profil-Invarianten (FHIRPath-Constraints) existiert mindestens ein Beispiel, das den Constraint **erfüllt zeigt**; bei verzweigenden Invarianten (entweder/oder-Logik) **je Zweig ein Beispiel**. Umgesetzte Beispiele:

* `DosageDE` (Medikation): **entweder** vollständige strukturierte Dosierung (`timing` + `doseAndRate`, ohne Text) **oder** reiner Freitext — abgedeckt durch das Patientenpaar **Patient-1 (strukturiert)** / **Patient-2 (unstrukturiert)**.
* `mii-pr-mikrobio-resistenzkategorie-status`: Positiv- **und** Negativ-Befund.
* `sba-1` (Soziodemographie, Schwerbehindertenausweis): Details nur bei vorhandenem Ausweis — Ja-Zweig mit GdB/Merkzeichen, Nein-Zweig ohne.

Ergänzend gilt: **referentielle Integrität** innerhalb jedes Bundles (in der CI gegen Blaze mit `ENFORCE_REFERENTIAL_INTEGRITY` erzwungen) und die durchgängige Kennzeichnung (`meta.security = HTEST`, `meta.source`).

### Gemessener Stand

Die folgenden Zahlen erzeugt `scripts/ms-coverage.py` bei jedem IG-Build neu:

**Bezugsstand: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.

13658 MS-Elemente über die genutzten Profile · **240 oberste unbefüllte Knoten**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| bildgebung | 12/12 | 371/381 | 97 % | `dosage.rate[x]:rateRatio.denominator`,`dosage.rate[x]:rateRatio.numerator` |
| biobank | 11/11 | 293/302 | 97 % | `extension:focus`,`extension:anzahlAliquots`,`processing.extension:temperature-miabis` |
| consent | 3/3 | 77/77 | 100 % | — |
| diagnose | 1/1 | 77/77 | 100 % | — |
| dokument | 1/1 | 69/70 | 99 % | `extension:nlp-processing-status` |
| fall | 1/1 | 96/96 | 100 % | — |
| icu | 94/94 | 2861/2994 | 96 % | `dataAbsentReason`,`referenceRange`,`specimen` |
| kardio | 13/13 | 361/361 | 100 % | — |
| labor | 3/3 | 151/151 | 100 % | — |
| lungenfunktion | 39/48 | 1412/1556 | 91 % | `hasMember`,`component`,`component:predicted` |
| medikation | 5/5 | 437/437 | 100 % | — |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1387/1427 | 97 % | `referenceRange`,`container.additive[x]`,`extension:focus` |
| molgen | 16/16 | 240/248 | 97 % | `basedOn`,`extension:focus`,`extension:metrics` |
| mtb | 50/50 | 1510/1517 | 100 % | `extension:transformationVon`,`extension:focus`,`extension:metrics` |
| onko | 76/76 | 2017/2023 | 100 % | `modifierExtension:aPraefix`,`modifierExtension:rPraefix`,`extension:transformationVon` |
| patho | 17/17 | 466/468 | 100 % | `extension:diagnosticReport`,`extension:focus` |
| person | 5/5 | 254/258 | 98 % | `extension:birthPlace.value[x].country.extension:countryCode` |
| pro | 21/23 | 290/292 | 99 % | `item.answer.item`,`questionnaire.extension:questionnaireDisplay` |
| prozedur | 1/1 | 46/46 | 100 % | — |
| seltene | 23/23 | 606/607 | 100 % | `extension:vonSEBetroffen` |
| soziodemographie | 16/16 | 149/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 76/78 | 97 % | `characteristic.extension:definitionByCombination`,`characteristic.extension:definitionReference` |
| symptom | 2/2 | 38/39 | 97 % | `specimen` |

Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als Ballot-Feedback-Kandidaten): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)

**Lesehilfe:** Nicht jede Lücke ist ein Fehler einer Instanz. Die verbleibenden offenen Knoten fallen in vier dokumentierte Kategorien:

1. **Upstream-Widersprüche**— Profile mit`value[x] 1..1`**und**MS-`dataAbsentReason`(ICU-Bilanzen, Soziodemographie, Mikrobio-Resistenzkategorie): eine DAR-Instanz wäre invalide (obs-6). Als Ballot-Feedback vorgesehen.
1. **Fachlich bewusst offen**— Elemente, deren Befüllung klinisch unsinnig wäre (z.B.`specimen`bei Bilanzierungs-Observations oder anamnestischen Symptomen,`valueQuantity`-Varianten auf rein qualitativen Mikrobiologie-Profilen,`referenceRange`ohne etablierten Sollbereich).
1. **Nicht verifizierbare Terminologie**— wo kein belegbarer Code existiert (LuFu-Predicted-Komponenten, upstream-Issue #45; OPS-Detailcodes), steht kein geratener Code im Testgut.
1. **Messgrenzen**— Extensions auf Primitiven (`_effectiveDateTime`u.ä.) erkennt die Heuristik nur teilweise; die Daten sind dort größtenteils vorhanden.

Zusätzlich gilt: **Ein Zeuge genügt.** Der maschinenlesbare Abdeckungs-Index (`docs/ms-coverage-index.json` im Repository) nennt je MS-Element die belegenden Instanzen und dient als Regressions-Radar beim Umbau von Testdaten.

### Grenzen und Ausblick

Die MS-Messung ist heuristisch (Basis-Pfad-Matching, Extension-Slices über ihre URL; Details im Skript-Docstring). Die Invarianten-Abdeckung wird bislang **kuratiert** statt gemessen — eine automatische Auswertung (FHIRPath-Evaluation je Constraint gegen alle Instanzen, inkl. Zweig-Erkennung) ist der nächste Ausbauschritt.


# Modulübergreifende Beispielpatienten

Die Testdaten haben drei Schichten. Die ersten beiden gab es schon:

| Schicht | Bundles | Was sie zeigt |
|---|---|---|
| **Technisch vollständig** | 16 Modul-Bundles (`bundle-<modul>-1`) | Jedes Profil eines Moduls mindestens einmal instanziiert, jedes Must-Support-Element befüllt. Ein eigener Patient je Modul. |
| **Klinisch kohärent** | 10 Patienten-Bundles (`bundle-pat-1` … `-pat-10`) | Ein plausibler Behandlungsverlauf über die **Basismodule**: Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent. |
| **Modulübergreifend** | 4 Beispielpatienten (`bundle-pat-11` … `-pat-14`) | Ein Patient, der Basismodule **und** Erweiterungsmodule trägt — damit modulübergreifende Verknüpfungen testbar werden. |

Die dritte Schicht schließt eine Lücke, die die ersten beiden konstruktionsbedingt offen lassen. Die Modul-Bundles sind vollständig, aber jedes hat **seinen eigenen Patienten**; keine Frage, die zwei Module überspannt, lässt sich aus ihnen beantworten. Die Patienten-Bundles 1–10 überspannen zwar Module, aber nur die Basismodule.

Die vier Beispielpatienten sind deshalb nicht von der Profilabdeckung getrieben — die liegt modulübergreifend ohnehin bei rund 98 % —, sondern jeder von **einer konkreten analytischen Fragestellung**, die genau diese Verknüpfung braucht. Jede Journey ist einem realen MII-Forschungsprojekt nachempfunden.

---

## Patient-11 — Forschungsprojekt, Soziodemographie und ein PROM-Verlauf

*Vorbild: Beobachtende Registerstudie zu kardiovaskulärem Risiko mit strukturierter Baseline-Dokumentation und PROM-Erhebung (ACRIBiS-Stil).*

**Module:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ Studie · Soziodemographie · PRO**

Ingrid Hallermann, 65, Linksherzinsuffizienz NYHA III. Stationäre Dekompensation im Januar 2025, danach Einschluss in die Registerstudie MII-CARE-PRO-2025 mit soziodemographischer Baseline-Erhebung und PROM-Messung zu drei Zeitpunkten.

**Was nur hier funktioniert:** ein **longitudinaler PROM-Verlauf**. Das PRO-Modul-Bundle hält alle Scores zu *einem* Zeitpunkt — eine Verlaufsanalyse lässt sich daran nicht testen. Hier liegt der EQ-5D-5L zu T0/T3/T6 und der PHQ-9 zu T0/T6 vor, jeweils mit eigener QuestionnaireResponse, korrekt über `derivedFrom` gebunden (EQ-5D-5L-Index 0,512 → 0,712 → 0,823; PHQ-9 14 → 8).

Ebenfalls eine Premiere: ambulante Kontakte (`class = AMB`, Kontakttyp `ub`) — bisher war jeder Encounter in den Testdaten stationär.

**Modellierungsgrenze:** `Observation.partOf` kann in R4 nicht auf `ResearchStudy` zeigen. Die Verbindung zwischen einer PROM-Messung und dem Forschungsprojekt läuft deshalb über das `ResearchSubject` und den Visiten-Encounter — nicht über die einzelne Observation.

## Patient-12 — Sepsis auf der Intensivstation

*Vorbild: Infektionssurveillance und Antibiotic Stewardship (SMITH ASIC / HELP, SmICS).*

**Module:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ ICU · Mikrobiologie**

Gerhard Woltmann, 71, Klebsiellen-Pneumonie mit septischem Schock. Intubation und Beatmung, Blutkultur, empirische Therapie mit Piperacillin/Tazobactam, Umstellung auf Meropenem, sobald das Antibiogramm vorlag.

**Was nur hier funktioniert:** eine **kausale Kante zwischen Mikrobiologie und Medikation**. Die Meropenem-Verordnung trägt

```
reasonReference    → Observation/…-mibi-mrgn-1          (3MRGN-Befund)
reasonReference    → Observation/…-mibi-ast-meropenem   (Meropenem sensibel)
priorPrescription  → MedicationRequest/…-medrequest-1   (die abgesetzte Therapie)
```

und die abgesetzte Piperacillin/Tazobactam-Verordnung steht auf `status = stopped` mit einem `statusReason`. Die Kernfrage von Stewardship-Analysen — *welcher Wechsel folgte auf welchen Resistenzbefund, und wie viele Stunden lagen dazwischen?* — ist damit allein aus den Daten beantwortbar.

Dazu ein **SOFA-Verlauf** über drei Zeitpunkte (12 → 9 → 4); das ICU-Modul-Bundle hat genau eine Instanz je Score.

**Terminologielücke (Ballot-Kandidat):** LOINC 2.83 hat keinen eigenen Observable-Code für den ESBL-Phänotyp — nur genbezogene LP-Parts (blaCTX-M, blaSHV, blaTEM …) und Answer-Codes. Stattdessen wird der generische Code 105277-8 „Beta lactamase [Presence] in Isolate“ verwendet, der Phänotyp steht im Text.

## Patient-13 — Diagnostische Odyssee bei einer seltenen Erkrankung

*Vorbild: CORD-MI (Collaboration on Rare Diseases).*

**Module:** Person · Fall · Labor · Medikation · Consent **+ Symptom · Seltene Erkrankungen**

Miriam Kastner, 34, Morbus Fabry. Erste Symptome ab 2011, Diagnose erst im Dezember 2023 — ausgelöst nicht durch die Symptome, sondern durch eine zufällig entdeckte Proteinurie.

**Was nur hier funktioniert:** der **diagnostische Verzug als messbare Größe**. Die drei Symptomkomplexe tragen `onsetPeriod.start` zwischen 2011 und 2016, während ihr `recordedDate` 2024 ist — sie wurden retrospektiv in der Anamnese erfasst. Die Differenz zum Feststellungsdatum der Diagnose (2023-12-08) ergibt **12 Jahre**. Genau diese Zahl ist das Ziel von Analysen im CORD-MI-Stil, und sie entsteht nur, weil Symptome (Modul Symptom) und Diagnose (Modul Seltene) am selben Patienten hängen.

Die jeweiligen Fehlzuordnungen sind in `note.text` festgehalten: „Wachstumsschmerzen“, „Reizdarmsyndrom“. Ohne sie sähen die Daten wie ein glatter Verlauf aus — dabei ist die Fehlzuordnung genau das, was sichtbar werden soll.

Eine HPO-Bewertung ist bewusst als **Ausschluss** dokumentiert (keine Angiokeratome nachweisbar, bei heterozygoten Frauen häufig fehlend): Der dokumentierte Ausschluss ist informativ, nicht das Fehlen der Ressource.

## Patient-14 — Personalisierte Onkologie

*Vorbild: PM4Onco / MIRACUM molekulares Tumorboard.*

**Module:** Person · Fall · Prozedur · Medikation · Consent **+ Onkologie · MTB**

Hartmut Brenneke, 58, Adenokarzinom des Colon sigmoideum, pT3 pN2 M1(HEP), G2. Der Pathologiebefund zeigt einen MLH1/PMS2-Verlust, der statt Standard-Chemotherapie eine molekulare Diagnostik auslöst.

**Was nur hier funktioniert:** eine **Kette über drei Module**:

```
Onko-Diagnose → Onko-Befund → TNM → Onko-Tumorkonferenz
  → MTB-Behandlungsepisode → NGS (BRAF V600E, MSI-H, TMB 41,3)
  → MTB-therapeutische Implikation → MTB-Therapieempfehlung
  → Onko-Systemtherapie → Onko-Verlauf (partielle Remission)
```

Die therapeutische Implikation leitet sich über `derivedFrom` aus **zwei** Befunden ab (MSI und TMB), und die onkologische Systemtherapie referenziert über `basedOn` den MTB-Therapieplan — nicht die prätherapeutische Tumorkonferenz. Damit wird beantwortbar: *Welcher molekulare Befund führte zu welcher Therapie, und wie war das Ansprechen?*

Die prätherapeutische Tumorkonferenz hält die zurückgestellte Chemotherapie explizit mit `status = cancelled` und einem `statusReason` fest — die Therapieabweichung ist Datum, nicht Auslassung.

---

## Konventionen der Beispielpatienten

**Ein Ordner je Journey.** Die Ressourcen liegen in `input/fsh/journey-<name>/` statt verteilt über die Modulordner. Jede Journey ist damit als Ganzes lesbar, prüfbar und entfernbar.

**Gemeinsame Infrastruktur wird wiederverwendet.** Organisationen, Behandelnde, Laborgeräte und Studienregister werden aus den bestehenden Modul-Bundles referenziert und im Bundle mitgeführt — neu sind nur die patientenbezogenen Ressourcen. Die Bundles bleiben trotzdem in sich geschlossen.

**Alle Referenzen sind relativ.** Kein Journey-Bundle enthält eine absolute Referenz. Absolute URLs in den MII-Canonical-Namensraum sind keine auflösbaren Serveradressen: HAPI lehnt sie als externe Referenzen ab (HAPI-0507), Blaze akzeptiert sie — eine Defektklasse, die ein Ladetest gegen einen einzelnen Server verbergen würde.

**Codes sind gegen den Terminologieserver geprüft.** Jeder verwendete SNOMED-, LOINC-, ICD-10-GM-, OPS-, ATC-, ORPHA- und HPO-Code wurde einzeln validiert. Wo kein passender Code existiert, steht das als Kommentar in der FSH-Quelle statt als erfundener Code in den Daten — bei Arzneimitteln gilt das ausdrücklich für PZN, ASK, UNII und CAS, die bewusst leer bleiben.

**Verifizierter Stand.** `sushi build` läuft ohne Fehler; die referenzielle Integrität innerhalb jedes der vier Bundles ist geschlossen; `check-coding-quality.py` meldet keine reinen Text-CodeableConcepts und keine Codings ohne System/Code; alle Bundles laden ohne Fehler oder Abweichung in Blaze und HAPI.

> **Kodierungshinweis:** Die Testdaten sind synthetisch. Die ICD-, OPS- und ICD-O-3-Kodierungen sind plausibilitätsgeprüft, dürfen aber nicht als Kodierempfehlung gelesen werden.

---

## Bekannte Probleme gegen den Ballot 2027

Zwei Profil-Invarianten im ICU-Modul kann **keine** Instanz erfüllen, weil ihre FHIRPath-Ausdrücke defekt sind. Beide wurden gegen die *eigenen* Beispiele des ICU-Moduls bestätigt, nicht nur gegen diese Journeys — es sind also Upstream-Defekte, keine Journey-Defekte.

### `sofa-score-range` (MII_PR_ICU_Score_SOFA)

```
expression: valueInteger >= 0 and valueInteger <= 24
path:       Observation.value[x]:valueInteger
```

Der Ausdruck ist **auf** dem gesliceten Element `valueInteger` verankert und sucht von dort ein *Kind* namens `valueInteger`, das es nicht geben kann. Der Ausdruck wird leer ausgewertet, `and` liefert leer, und der Constraint schlägt für jede konforme Instanz fehl. Die funktionierende Form an diesem Pfad ist `$this >= 0 and $this <= 24`.

Hier betroffen: die drei SOFA-Observationen des Sepsisverlaufs (Werte 12, 9, 4 — alle im beabsichtigten Bereich). Ebenfalls betroffen: `mii-exa-test-data-patient-1-icu-score-sofa-1` im ICU-Modul-Bundle.

### `gcs-total-range` (MII_PR_ICU_Score_GCS)

```
expression: value.exists() implies (value.ofType(Quantity) >= 3 and value.ofType(Quantity) <= 15)
path:       Observation
```

Eine `Quantity` wird direkt mit einer Ganzzahl verglichen. Der Vergleich löst nicht auf, also schlägt der Constraint fehl. Die funktionierende Form ist `value.ofType(Quantity).value >= 3 and … <= 15`.

Hier betroffen: die GCS-Observation des Sepsisverlaufs (Wert 10, im beabsichtigten Bereich). Ebenfalls betroffen: das eigene GCS-Beispiel des ICU-Moduls.

### Component-Slicing ohne diskriminierendes Pattern (MII_PR_ICU_Score_SOFA, …_GCS)

Die Score-Profile slicen `Observation.component` nach `code`, aber die Slices tragen **kein** `patternCodeableConcept` und kein `fixedCodeableConcept` auf `component.code`. Ein Diskriminator ist deklariert, ohne dass es etwas zu diskriminieren gäbe; die Slice-Auflösung kann nicht gelingen, und der Validator meldet einen Fehler je Component:

```
Slicing kann nicht ausgewertet werden: Konnte nicht mit dem Diskriminator (1)
für Slice code in Profil Observation.component:respiratory übereinstimmen
```

Das ist die mit Abstand größte Fehlerklasse in diesen Journeys: **132 der Fehler**, und alle auf genau vier Ressourcen — 114 auf den drei SOFA-Observationen, 18 auf der GCS-Observation des Sepsisverlaufs. Es ist kein Terminologieartefakt; die Zahl ist byte-identisch, ob der Validator mit `-tx n/a` oder gegen einen laufenden Terminologieserver läuft.

Verwandt: Das eigene FSH des ICU-Moduls vermerkt bereits, dass die SNOMED-Patterns dieser Subscore-Slices den Platzhaltercode `xxx` enthalten (siehe `docs/research-icu-scores.md`). Das fehlende Pattern im publizierten Snapshot ist derselbe Defekt aus Sicht des Validators.

### Kodierungen, die offline nicht validierbar sind

Die BfArM-Systeme — ICD-10-GM, OPS, Alpha-ID — und ICD-O-3 sind in keinem Paket des Abhängigkeitsgraphen enthalten, und der lokale Blaze-Terminologieserver liefert nur LOINC und SNOMED CT. Kodierungen gegen sie werden deshalb als nicht validierbar gemeldet, sobald kein Ontoserver erreichbar ist. Jeder solche Code in diesen Journeys wurde stattdessen beim Erstellen einzeln gegen den MII-Terminologieserver geprüft; `8140/3` in ICD-O-3 etwa löst in der Ausgabe 2019 zu „Adenokarzinom o.n.A.“ auf.

Das ist eine Tooling-Lücke, kein Datendefekt — aber es bedeutet, dass ein Validierungslauf ohne den MII-Ontoserver diese Bindings in keine Richtung bestätigen kann.

**Ein unvollständiger Terminologieserver ist schlechter als keiner.** Das ist kontraintuitiv und wurde gemessen, nicht angenommen. Die vier Journeys zweimal aus demselben Build validiert:

| | `-tx n/a` | lokaler Blaze (LOINC + SNOMED, kein BfArM) |
|---|---|---|
| Slicing-Diskriminator ohne Pattern | 132 | 132 — byte-identisch |
| Unbekanntes Codesystem | Warnung | **64 Fehler** |
| Kein passendes Profil unter den Alternativen | ~25 | ~60 |
| Code nicht im ValueSet | 3 | 13 |
| Gesamt | **185** | **382** |

Mit `-tx n/a` erzeugt ein nicht auflösbares Codesystem eine Warnung; mit einem vorhandenen, aber unvollständigen Terminologieserver einen harten Fehler. Die Profilauswahl degradiert genauso: Wo mehrere Profile zulässig sind, wählt der Validator nach Coding — kann ein Codesystem nicht aufgelöst werden, scheitert die Wahl ganz, statt mit einer Warnung durchzugehen.

Der MII-Abhängigkeitsgraph hat 2266 Required-Bindings über 413 ValueSets; nur 73 davon liegen auf BfArM-Systemen, aber das sind die Achsen, auf denen Testdaten dicht kodieren — OPS, ATC, ICD-10-GM, Alpha-ID, ICD-O-3. Wenige Bindings, Tausende Kodierungen dagegen. Deshalb verdoppelt sich die Fehlerzahl.

Die praktische Konsequenz für alle, die diese Testdaten validieren: entweder einen Terminologieserver nutzen, der die BfArM-Systeme kennt, oder gar keinen und nicht auflösbare Codesysteme als Warnungen lesen. Ein halb vollständiger Server liefert das am wenigsten brauchbare Ergebnis.

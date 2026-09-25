# Modulübergreifende Beispielpatienten

Die Testdaten kennen drei Schichten. Die ersten beiden gab es schon:

| Schicht | Bundles | Was sie belegt |
|---|---|---|
| **Technisch vollständig** | 16 Modulbundles (`bundle-<modul>-1`) | Jedes Profil eines Moduls mindestens einmal instanziiert, jeder Must-Support-Knoten befüllt. Eigener Patient je Modul. |
| **Klinisch plausibel** | 10 Patientenbundles (`bundle-pat-1` … `-pat-10`) | Ein stimmiger Behandlungsfall über die **Basismodule** hinweg: Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent. |
| **Modulübergreifend** | 4 Beispielpatienten (`bundle-pat-11` … `-pat-14`) | Ein Patient, der Basismodule **und** Erweiterungsmodule trägt — und über den sich modulübergreifend joinen lässt. |

Die dritte Schicht schließt eine Lücke, die in den ersten beiden konstruktionsbedingt offen bleibt: Die Modulbundles sind vollständig, haben aber **je einen eigenen Patienten**. Über sie lässt sich keine Frage beantworten, die zwei Module verbindet. Die Patientenbundles 1–10 verbinden zwar Module, aber nur die Basismodule.

Die vier Beispielpatienten sind deshalb nicht an Profilabdeckung orientiert — die liegt modulweit bereits bei rund 98 % —, sondern jeweils an **einer konkreten Auswertungsfrage**, die genau diese Verbindung braucht. Jede Journey ist an ein real durchgeführtes MII-Forschungsvorhaben angelehnt.

---

## Patient-11 — Forschungsvorhaben, Soziodemographie und PROM-Verlauf

*Vorbild: beobachtende Registerstudie zu kardiovaskulärem Risiko mit strukturierter Basisdokumentation und PROM-Erhebung (ACRIBiS-artig).*

**Module:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ Studie · Soziodemographie · PRO**

Ingrid Hallermann, 65, Linksherzinsuffizienz NYHA III. Stationäre Dekompensation im Januar 2025, danach Einschluss in die Registerstudie MII-CARE-PRO-2025 mit soziodemographischer Basiserhebung und PROM-Messung zu drei Zeitpunkten.

**Was nur hier geht:** ein **longitudinaler PROM-Verlauf**. Das PRO-Modulbundle enthält alle Scores auf *einem* Zeitpunkt — eine Verlaufsauswertung ist damit nicht testbar. Hier liegen EQ-5D-5L zu T0/T3/T6 und PHQ-9 zu T0/T6 vor, jeweils mit eigener QuestionnaireResponse, an die `derivedFrom` korrekt gebunden ist (EQ-5D-5L Index 0.512 → 0.712 → 0.823; PHQ-9 14 → 8).

Zusätzlich: erste ambulante Encounter (`class = AMB`, Kontaktart `ub`) in den Testdaten überhaupt — bis dahin war jeder Encounter stationär.

**Modellierungsgrenze:** `Observation.partOf` kann in R4 nicht auf `ResearchStudy` zeigen. Die Zuordnung der PROM-Messung zum Forschungsvorhaben läuft daher über den `ResearchSubject` und den Visiten-Encounter — nicht über die einzelne Observation.

## Patient-12 — Sepsis auf der Intensivstation

*Vorbild: Infektionssurveillance und Antibiotic Stewardship (SMITH ASIC / HELP, SmICS).*

**Module:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ ICU · Mikrobiologie**

Gerhard Woltmann, 71, Klebsiellen-Pneumonie mit septischem Schock. Intubation und Beatmung, Blutkultur, empirische Therapie mit Piperacillin/Tazobactam, nach dem Antibiogramm Umstellung auf Meropenem.

**Was nur hier geht:** eine **kausale Kante zwischen Mikrobiologie und Medikation**. Die Meropenem-Verordnung trägt

```
reasonReference → Observation/…-mibi-mrgn-1          (3MRGN-Befund)
reasonReference → Observation/…-mibi-ast-meropenem   (Meropenem empfindlich)
priorPrescription → MedicationRequest/…-medrequest-1 (die abgesetzte Therapie)
```

und die abgesetzte Piperacillin/Tazobactam-Verordnung steht auf `status = stopped` mit `statusReason`. Damit ist die Kernfrage von Stewardship-Auswertungen — *welche Umstellung folgte auf welchen Resistenzbefund, und wie viele Stunden lagen dazwischen?* — allein aus den Daten beantwortbar.

Dazu ein **SOFA-Verlauf** über drei Zeitpunkte (12 → 9 → 4); das ICU-Modulbundle hat pro Score genau eine Instanz.

**Terminologielücke (Ballot-Kandidat):** Für den ESBL-Phänotyp existiert in LOINC 2.83 kein eigener Observable-Code — nur genbezogene LP-Teile (blaCTX-M, blaSHV, blaTEM …) und Antwortcodes. Verwendet wird deshalb der generische Code 105277-8 „Beta lactamase [Presence] in Isolate" mit dem Phänotyp im Text.

## Patient-13 — Diagnostische Odyssee bei seltener Erkrankung

*Vorbild: CORD-MI (Collaboration on Rare Diseases).*

**Module:** Person · Fall · Labor · Medikation · Consent **+ Symptom · Seltene Erkrankungen**

Miriam Kastner, 34, Morbus Fabry. Erstsymptome ab 2011, Diagnose erst im Dezember 2023 — ausgelöst nicht durch die Symptome, sondern durch eine zufällig entdeckte Proteinurie.

**Was nur hier geht:** die **diagnostische Latenz als messbare Größe**. Die drei Symptomkomplexe tragen `onsetPeriod.start` zwischen 2011 und 2016, während ihr `recordedDate` auf 2024 liegt — erfasst wurden sie rückblickend bei der Anamnese. Die Differenz zum Feststellungsdatum der Diagnose (2023-12-08) ergibt **12 Jahre**. Genau dieser Kennwert ist das Ziel CORD-MI-artiger Auswertungen, und er entsteht erst dadurch, dass Symptome (Modul Symptom) und Diagnose (Modul Seltene) an demselben Patienten hängen.

Die jeweils falsche Vorbewertung steht in `note.text`: „Wachstumsschmerz", „Reizdarmsyndrom". Ohne sie sähen die Daten wie ein glatter Verlauf aus — gerade die Fehlzuordnung ist aber das, was sichtbar werden soll.

Ein HPO-Assessment ist bewusst als **Ausschluss** dokumentiert (Angiokeratome nicht nachweisbar, bei heterozygoten Frauen häufig fehlend): der dokumentierte Ausschluss ist informativ, nicht das Fehlen der Ressource.

## Patient-14 — Personalisierte Onkologie

*Vorbild: PM4Onco / MIRACUM Molekulares Tumorboard.*

**Module:** Person · Fall · Prozedur · Medikation · Consent **+ Onkologie · MTB**

Hartmut Brenneke, 58, Adenokarzinom des Colon sigmoideum, pT3 pN2 M1(HEP), G2. Im Pathologiebefund MLH1/PMS2-Verlust, daraufhin Molekulardiagnostik statt Standardchemotherapie.

**Was nur hier geht:** eine **Kette über drei Module**:

```
Onko-Diagnose → Onko-Befund → TNM → Onko-Tumorkonferenz
  → MTB-Behandlungsepisode → NGS (BRAF V600E, MSI-H, TMB 41,3)
  → MTB-Therapeutische-Implikation → MTB-Therapieempfehlung
  → Onko-Systemische-Therapie → Onko-Verlauf (Teilremission)
```

Die therapeutische Implikation leitet sich per `derivedFrom` aus **zwei** Befunden ab (MSI und TMB), und die onkologische Systemtherapie referenziert per `basedOn` den MTB-Therapieplan — nicht die prätherapeutische Tumorkonferenz. Damit ist beantwortbar: *welcher molekulare Befund hat zu welcher Therapie geführt, und wie war das Ansprechen?*

Die prätherapeutische Tumorkonferenz dokumentiert die zurückgestellte Chemotherapie explizit mit `status = cancelled` und `statusReason` — die Therapieabweichung ist Datum, nicht Auslassung.

---

## Konventionen der Beispielpatienten

**Ein Ordner je Journey.** Die Ressourcen liegen in `input/fsh/journey-<name>/` statt verteilt über die Modulordner. Jede Journey ist damit als Ganzes lesbar, überprüfbar und wieder entfernbar.

**Geteilte Infrastruktur wird mitgenutzt.** Organisationen, behandelnde Personen, Laborgeräte und Studienregister werden aus den bestehenden Modulbundles referenziert und im Bundle mitgeführt — nur die patientenbezogenen Ressourcen sind neu. Die Bundles bleiben dadurch trotzdem self-contained.

**Codes sind gegen den Terminologieserver geprüft.** Jeder verwendete SNOMED-, LOINC-, ICD-10-GM-, OPS-, ATC-, ORPHA- und HPO-Code wurde einzeln validiert. Wo kein passender Code existiert, steht das als Kommentar in der FSH-Quelle statt als erfundener Code in den Daten — für Fertigarzneimittel gilt das ausdrücklich für PZN, ASK, UNII und CAS, die bewusst leer bleiben.

**Referenzielle Integrität ist geprüft.** In allen vier Bundles löst jede literale Referenz innerhalb des Bundles auf.

> **Kodierhinweis:** Die Testdaten sind synthetisch. Die ICD-, OPS- und ICD-O-3-Kodierungen sind plausibilisiert, aber nicht als Kodierempfehlung zu lesen.

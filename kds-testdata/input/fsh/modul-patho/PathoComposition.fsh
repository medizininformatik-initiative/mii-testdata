// ============================================================================
// MII Patho Test Data - Composition (Befunddokument)
// Portiert aus BIH-CEI/ProstateCancerSpec (CoreNeedleBiopsy/composition.fsh),
// migriert auf mii-pr-patho-composition 2027.0.0-ballot:
// Sektions-Slices (Makroskopie/Mikroskopie/Intraoperativ/Diagnostische
// Schlussfolgerung/Zusätzliche Beobachtung) statt einer Sammel-Sektion.
// ============================================================================

Instance: mii-exa-test-data-patho-composition-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition
Usage: #example
Title: "Histopathologischer Befundbericht - Prostatabiopsie"
Description: "Composition für den strukturierten Prostatabiopsie-Befundbericht (12 Stanzen)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div id=\"befund-titel\"><b>Histopathologischer Befundbericht - Prostatabiopsie</b></div><table><tr id=\"befund-eingangsnummer\"><td>Eingangsnummer</td><td>E_24_001</td></tr><tr id=\"befund-status\"><td>Status</td><td>final</td></tr><tr id=\"befund-patient\"><td>Patient</td><td>Klaus Gewebeprobe (PATH-TEST-001)</td></tr><tr id=\"befund-datum\"><td>Datum</td><td>2024-01-20</td></tr></table></div>"
* extension[document-version].valueString = "1"
// extension[diagnosticReport] (hl7.eu composition-diagnosticReportReference) bewusst nicht belegt:
// das Extension-Package ist nicht Teil des BOM-Abhaengigkeitsgraphen (SUSHI kann die URL nicht aufloesen).
// Die Verknuepfung Report<->Composition laeuft ueber DiagnosticReport.extension[composition].
* identifier.type = $v2-0203#ACSN "Accession ID"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befundbericht"
* identifier.value = "E_24_001"
* status = #final
* type.coding[+] = $loinc#11526-1 "Pathology study"
* type.coding[XDS] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[sct] = $sct#721967005 "Tissue pathology biopsy report"
* category.coding[IHE] = http://ihe-d.de/CodeSystems/IHEXDSclassCode#BEF
* subject = Reference(mii-exa-test-data-patho-patient-1)
* encounter = Reference(mii-exa-test-data-patho-encounter-1)
* date = "2024-01-20T15:30:00+01:00"
* author = Reference(mii-exa-test-data-patho-organization-1)
* author.display = "Institut für Pathologie"
* title = "Histopathologischer Befundbericht - Prostatabiopsie"
* attester[legal].mode = #legal
* attester[legal].party = Reference(mii-exa-test-data-patho-organization-1)
* attester[content-validator].mode = #professional
* attester[content-validator].party = Reference(mii-exa-test-data-patho-practitioner-1)
* custodian = Reference(mii-exa-test-data-patho-organization-1)
* event.period.start = "2024-01-15"
* event.period.end = "2024-01-20"
* event.detail = Reference(mii-exa-test-data-patho-request-1)

// Sektion: Gesamter Befundbericht
* section[patho-diagnostic-report]
  * title = "Pathologiebefundbericht"
  * code = $loinc#60567-5 "Comprehensive pathology report panel"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h3>Klinische Angaben</h3><p>Erhöhter PSA-Wert (12,8 ng/ml). V.a. Prostatakarzinom. Bitte histologische Abklärung. 12-Stanzen-Biopsie beider Prostatalappen.</p><p>Der vollständige strukturierte Befund gliedert sich in die Sektionen Makroskopie, Mikroskopie, Intraoperative Beobachtung, Diagnostische Schlussfolgerung und Zusätzliche Beobachtungen.</p></div>"
  * entry = Reference(mii-exa-test-data-patho-report-1)

// Sektion: Makroskopie
* section[makroskopie]
  * title = "Makroskopie"
  * code = $loinc#22634-0 "Pathology report gross observation"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Makroskopische Messungen für alle 12 Prostatastanzen: Längen 1,3–1,9 cm, je 1 Zylinder pro Specimen. Stanzen 01–06 aus rechter Prostataregion (lateral basal/mid/apikal, medial basal/mid/apikal), Stanzen 07–12 aus linker Prostataregion.</p><table><thead><tr><th>Stanze</th><th>Lokalisation</th><th>Stanzenlänge (cm)</th></tr></thead><tbody><tr><td>01</td><td>Rechts lateral basal</td><td>1.8</td></tr><tr><td>02</td><td>Rechts lateral mid</td><td>1.6</td></tr><tr><td>03</td><td>Rechts lateral apikal</td><td>1.5</td></tr><tr><td>04</td><td>Rechts medial basal</td><td>1.9</td></tr><tr><td>05</td><td>Rechts medial mid</td><td>1.4</td></tr><tr><td>06</td><td>Rechts medial apikal</td><td>1.7</td></tr><tr><td>07</td><td>Links lateral basal</td><td>1.6</td></tr><tr><td>08</td><td>Links lateral mid</td><td>1.5</td></tr><tr><td>09</td><td>Links lateral apikal</td><td>1.8</td></tr><tr><td>10</td><td>Links medial basal</td><td>1.3</td></tr><tr><td>11</td><td>Links medial mid</td><td>1.7</td></tr><tr><td>12</td><td>Links medial apikal</td><td>1.4</td></tr></tbody></table></div>"
  * entry = Reference(mii-exa-test-data-patho-macro-grouper-1)

// Sektion: Mikroskopie
* section[mikroskopie]
  * title = "Mikroskopie"
  * code = $loinc#22635-7 "Pathology report microscopic observation"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Adenokarzinom in 7 von 12 Stanzen nachgewiesen (01, 02, 04, 06, 07, 09, 11). Gleason-Scores: Stanze 01 (3+4=7), Stanze 02 (4+3=7), Stanze 04 (4+4=8), Stanze 06 (3+3=6), Stanze 07 (4+5=9), Stanze 09 (3+4=7), Stanze 11 (3+4=7). Höchster Gleason-Score 4+5=9, ISUP-Gradgruppe 5. Benigne Befunde in Stanzen 03, 05, 08, 10, 12.</p></div>"
  * entry = Reference(mii-exa-test-data-patho-micro-grouper-1)

// Sektion: Intraoperative Beobachtung (Schnellschnitt)
* section[intraoperativ]
  * title = "Intraoperative Beobachtung"
  * code = $loinc#83321-0 "Pathology report intraoperative observation in Specimen Document"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Schnellschnitt Stanze 01: Nachweis eines azinären Adenokarzinoms; endgültige Gradierung am Paraffinmaterial.</p></div>"
  * entry = Reference(mii-exa-test-data-patho-intraop-grouper-1)

// Sektion: Diagnostische Schlussfolgerung
* section[diagnostische-schlussfolgerung]
  * title = "Diagnostische Schlussfolgerung"
  * code = $loinc#22637-3 "Pathology report diagnosis"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>7 von 12 Stanzen tumorbefallen (4 rechts: 01, 02, 04, 06; 3 links: 07, 09, 11). Prozentualer Tumoranteil 51%, Tumorlänge gesamt 52,7 mm. Perineurale Infiltration und Infiltration des periprostatischen Fettgewebes apikal nachgewiesen. Samenblaseninfiltration, lymphovaskuläre Invasion, intraduktales Karzinom, ASAP, High-grade-PIN und granulomatöse Prostatitis nicht nachgewiesen.</p><p><b>Diagnose:</b> Azinäres Adenokarzinom der Prostata (ICD-O 8140/3), Gleason-Score 4+5=9 (höchster Score), ISUP-Gradgruppe 5.</p></div>"
  * entry = Reference(mii-exa-test-data-patho-conclusion-grouper-1)

// Sektion: Zusätzliche Beobachtungen
* section[zusaetzliche-beobachtung]
  * title = "Zusätzliche Beobachtungen"
  * code = $loinc#100969-5 "Pathology report additional specified observation in Specimen Narrative"
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Immunhistochemie: Die Tumorzellen sind negativ für p63.</p></div>"
  * entry = Reference(mii-exa-test-data-patho-zusatz-grouper-1)

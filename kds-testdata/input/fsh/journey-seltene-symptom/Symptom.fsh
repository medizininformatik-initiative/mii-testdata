// ============================================================================
// JOURNEY Patient-13 — Modul Symptom
//
// DIE ODYSSEE ALS DATENSTRUKTUR: Drei Symptomkomplexe, deren onsetPeriod
// zwischen 2011 und 2019 beginnt, während recordedDate erst 2023 liegt —
// erfasst wurden sie nämlich rückblickend bei der Anamnese im Zentrum für
// Seltene Erkrankungen. Die Differenz zwischen onsetPeriod.start des frühesten
// Symptoms und dem Feststellungsdatum der Diagnose IST die diagnostische
// Latenz.
//
// Die jeweils falsche Vorbewertung ("Wachstumsschmerz", "Reizdarmsyndrom")
// steht in note.text. Ohne sie wirken die Daten wie ein glatter Verlauf —
// gerade die Fehlzuordnung ist aber das, was CORD-MI-artige Auswertungen
// sichtbar machen wollen.
// ============================================================================

RuleSet: JourneySymptomBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* recordedDate = "2024-01-15"

// ----------------------------------------------------------------------------
// Symptom 1 — Akroparästhesien, Beginn 2011 (Schulalter)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-symptom-akroparaesthesie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition
Usage: #example
Description: "Symptom Condition: Akroparästhesien seit 2011 (Patient 13)"
* insert JourneySymptomBase
* extension[assertedDate].valueDateTime = "2024-01-15"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-condition"
* identifier.value = "SYMP-CON-0013-1"
* severity = $sct#6736007 "Moderate (severity modifier)"
* code.coding[+] = $sct#91019004 "Paresthesia"
* code.coding[+] = $icd-10-gm#R20.2 "Parästhesie der Haut"
* code.coding[=].version = "2024"
* code.text = "Brennende Schmerzen und Missempfindungen an Händen und Füßen, belastungs- und hitzeabhängig"
* bodySite = $sct#66019005 "Limb structure"
* onsetPeriod.start = "2011"
* onsetPeriod.start.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetPeriod.start.extension[0].valueCodeableConcept = $sct#263659003 "Adolescence (qualifier value)"
* note.text = "Ueber Jahre als Wachstumsschmerz bzw. funktionelle Beschwerden eingeordnet. Erst 2023 im Zusammenhang mit der Fabry-Diagnose als Akroparaesthesie erkannt."

// ----------------------------------------------------------------------------
// Symptom 2 — Hypohidrose und Hitzeintoleranz, Beginn 2014
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-symptom-hypohidrose
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition
Usage: #example
Description: "Symptom Condition: Hypohidrose mit Hitzeintoleranz seit 2014 (Patient 13)"
* insert JourneySymptomBase
* extension[assertedDate].valueDateTime = "2024-01-15"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-condition"
* identifier.value = "SYMP-CON-0013-2"
* severity = $sct#255604002 "Mild (qualifier value)"
* code.coding[+] = $sct#45004005 "Hypohidrosis"
* code.coding[+] = $icd-10-gm#L74.4 "Anhidrose"
* code.coding[=].version = "2024"
* code.text = "Vermindertes Schwitzen mit ausgepraegter Hitzeintoleranz"
* onsetPeriod.start = "2014"
* onsetPeriod.start.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetPeriod.start.extension[0].valueCodeableConcept = $sct#263659003 "Adolescence (qualifier value)"
* note.text = "Nie eigenstaendig aerztlich abgeklaert; von der Patientin selbst als Eigenheit beschrieben. Typisches Fruehsymptom des Morbus Fabry."

// ----------------------------------------------------------------------------
// Symptom 3 — rezidivierende abdominelle Schmerzattacken, 2016–2019
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-symptom-abdominal
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition
Usage: #example
Description: "Symptom Condition: Rezidivierende abdominelle Schmerzattacken 2016-2019 (Patient 13)"
* insert JourneySymptomBase
* extension[assertedDate].valueDateTime = "2024-01-15"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-condition"
* identifier.value = "SYMP-CON-0013-3"
* severity = $sct#6736007 "Moderate (severity modifier)"
* code.coding[+] = $sct#21522001 "Abdominal pain"
* code.coding[+] = $icd-10-gm#R10.4 "Sonstige und nicht näher bezeichnete Bauchschmerzen"
* code.coding[=].version = "2024"
* code.text = "Kolikartige Bauchschmerzen mit Diarrhoe, attackenartig"
* bodySite = $sct#113345001 "Abdominal structure"
* onsetPeriod.start = "2016"
* onsetPeriod.end = "2019"
* note.text = "Dreimalige gastroenterologische Abklaerung ohne wegweisenden Befund; als Reizdarmsyndrom gewertet. Retrospektiv Fabry-typische gastrointestinale Beteiligung."

// ----------------------------------------------------------------------------
// Symptom-Observations: die anamnestische Erhebung selbst
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-symptom-obs-schmerz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Schmerzintensität der Akroparästhesien (NRS 7)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[associatedSymptomOrCondition].valueReference = Reference(mii-exa-test-data-patient-13-symptom-akroparaesthesie)
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0013-1"
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* effectiveDateTime = "2024-01-15"
* issued = "2024-01-15T09:40:00+01:00"
* valueQuantity = 7 '{score}' "{score}"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* method = $sct#84100007 "History taking"
* component.code = $sct#260864003 "Frequency (attribute)"
* component.valueString = "Krisenartige Schmerzattacken etwa zweimal monatlich, ausgeloest durch Hitze und koerperliche Belastung"

Instance: mii-exa-test-data-patient-13-symptom-obs-hitzeintoleranz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
Usage: #example
Description: "Symptom Observation: Hitzeintoleranz (anamnestisch erhoben)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[associatedSymptomOrCondition].valueReference = Reference(mii-exa-test-data-patient-13-symptom-hypohidrose)
* identifier.system = "https://www.charite.de/fhir/sid/symptom-observation"
* identifier.value = "SYMP-OBS-0013-2"
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#75325-1 "Symptom"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* effectiveDateTime = "2024-01-15"
* issued = "2024-01-15T09:45:00+01:00"
// Hitzeintoleranz hat in SNOMED CT keinen eigenen Code (geprueft gegen die
// internationale Edition 20260501); HPO fuehrt das Konzept als HP:0002046.
* valueCodeableConcept.coding = $HPO#HP:0002046 "Heat intolerance"
* valueCodeableConcept.text = "Ausgepraegte Hitzeintoleranz, Meidung von Sport und Sauna"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* method = $sct#84100007 "History taking"

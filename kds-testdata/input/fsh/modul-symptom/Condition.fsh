// ============================================================================
// MII Symptom - Symptom/Befund als Condition (mii-pr-symptom-condition)
// Hinweis: Das Profil ist im Package als abstract markiert; SUSHI erlaubt
// Instanzen von abstrakten Constraint-Profilen (Spezialisierung Condition
// ist nicht abstrakt). Die Instanzen decken die MS-Elemente ab.
// ============================================================================

// Condition 1: Chronische Spannungskopfschmerzen
// MS-Abdeckung: assertedDate, identifier, clinicalStatus, verificationStatus,
// category, severity, code, bodySite, subject, encounter, onsetPeriod inkl.
// lebensphase-von/-bis, recordedDate, evidence.code, evidence.detail
Instance: mii-exa-test-data-symptom-condition-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition
Usage: #example
Description: "Symptom Condition: Chronische Spannungskopfschmerzen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[assertedDate].valueDateTime = "2025-03-04"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-condition"
* identifier.value = "SYMP-CON-0001"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* severity = $sct#6736007 "Moderate (severity modifier)"
* code.coding[+] = $sct#398057008 "Tension-type headache"
* code.coding[+] = $icd-10-gm#G44.2 "Spannungskopfschmerz"
* code.text = "Chronische Spannungskopfschmerzen"
* bodySite = $sct#69536005 "Head structure"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* encounter = Reference(mii-exa-test-data-symptom-encounter-1)
// Beginn in der Jugend, genauer Zeitpunkt nicht erinnerlich (Unschaerfe-Periode).
// Lebensphase-Extension mit explizitem url statt Slice-Name, da die BOM
// de.basisprofil.r4 nicht einbettet und SUSHI das Extension-Profil sonst
// nicht aufloesen kann (Ergebnis-JSON ist identisch zum Slice lebensphase-von/-bis).
* onsetPeriod.start = "2009"
* onsetPeriod.start.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetPeriod.start.extension[0].valueCodeableConcept = $sct#263659003 "Adolescence (qualifier value)"
* onsetPeriod.end = "2012"
* onsetPeriod.end.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetPeriod.end.extension[0].valueCodeableConcept = $sct#263659003 "Adolescence (qualifier value)"
* recordedDate = "2025-03-04"
* evidence.code = $sct#25064002 "Headache"
* evidence.detail = Reference(mii-exa-test-data-symptom-observation-1)

// Condition 2: Chronische Herzinsuffizienz mit NYHA-Stadium
// MS-Abdeckung: stage.summary, stage.assessment, stage.type
Instance: mii-exa-test-data-symptom-condition-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition
Usage: #example
Description: "Symptom Condition: Chronische Herzinsuffizienz, NYHA-Klasse II"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[assertedDate].valueDateTime = "2023-11-20"
* identifier.system = "https://www.charite.de/fhir/sid/symptom-condition"
* identifier.value = "SYMP-CON-0002"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* severity = $sct#6736007 "Moderate (severity modifier)"
* code.coding[+] = $sct#84114007 "Heart failure"
* code.coding[+] = $icd-10-gm#I50.9 "Herzinsuffizienz, nicht näher bezeichnet"
* code.text = "Chronische Herzinsuffizienz"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* encounter = Reference(mii-exa-test-data-symptom-encounter-1)
* onsetDateTime = "2023-11-20"
* recordedDate = "2025-03-04"
* stage.summary = $sct#421704003 "New York Heart Association Classification - Class II"
* stage.assessment = Reference(mii-exa-test-data-symptom-observation-3)
* stage.type = $sct#260998006 "Clinical staging (qualifier value)"

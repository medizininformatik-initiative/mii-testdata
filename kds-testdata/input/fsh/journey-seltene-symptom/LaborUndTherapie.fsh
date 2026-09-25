// ============================================================================
// JOURNEY Patient-13 — Module Laborbefund und Medikation
//
// Zwei Laborbefunde tragen die Journey:
//   labobs-protein  (2023-11-14) — der Zufallsbefund, der die Abklärung startet
//   labobs-agalsidase (2023-11-20) — der Befund, der die Diagnose möglich macht
// Beide sind vom HPO-Assessment bzw. von der Diagnose aus referenziert, sodass
// die Diagnosefindung als Kette lesbar wird.
// ============================================================================

Instance: mii-exa-test-data-patient-13-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
Usage: #example
Description: "ServiceRequest: Nierenfunktion und Proteinurie-Abklärung (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* intent = #order
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* identifier[anforderung].value = "LA_000013"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* category.coding[laboratory] = $observation-category#laboratory
* category.coding[laboratory].display = "Laboratory"
* code = $loinc#2890-2 "Protein/Creatinine [Mass Ratio] in Urine"
* code.text = "Protein-Kreatinin-Ratio und Serumkreatinin"
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-1)
* authoredOn = "2023-11-14T10:20:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)

Instance: mii-exa-test-data-patient-13-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Nephrologisches Labor und Enzymdiagnostik (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnosticReport(LDR_000013, mii-exa-test-data-patient-13)
* basedOn = Reference(mii-exa-test-data-patient-13-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-1)
* effectiveDateTime = "2023-11-14T10:30:00+01:00"
* issued = "2023-11-20T14:00:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* result[0] = Reference(mii-exa-test-data-patient-13-labobs-protein)
* result[1] = Reference(mii-exa-test-data-patient-13-labobs-kreatinin)
* result[2] = Reference(mii-exa-test-data-patient-13-labobs-agalsidase)
* conclusion = "Proteinurie 780 mg/g Kreatinin bei normaler Nierenfunktion. Alpha-Galaktosidase-A-Aktivitaet in Leukozyten deutlich erniedrigt — Verdacht auf Morbus Fabry, genetische Abklaerung empfohlen."

Instance: mii-exa-test-data-patient-13-labobs-protein
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Protein-Kreatinin-Ratio im Urin (Patient 13) — der Zufallsbefund"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000051, 2890-2, Protein/Creatinine [Mass Ratio] in Urine, mii-exa-test-data-patient-13, mii-exa-test-data-patient-13-encounter-1, 2023-11-14T10:30:00+01:00, 2023-11-14T16:00:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-13-labrequest-1)
* valueQuantity = 780 $ucum#mg/g "milligram per gram"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.high = 150 $ucum#mg/g "milligram per gram"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* note.text = "Im Rahmen einer betriebsaerztlichen Untersuchung aufgefallen — der Anlass, der die zwoelfjaehrige diagnostische Odyssee beendet hat."

Instance: mii-exa-test-data-patient-13-labobs-kreatinin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Kreatinin im Serum (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000052, 2160-0, Creatinine [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-13, mii-exa-test-data-patient-13-encounter-1, 2023-11-14T10:30:00+01:00, 2023-11-14T16:00:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-13-labrequest-1)
* valueQuantity = 0.82 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 0.51 $ucum#mg/dL "milligram per deciliter"
* referenceRange.high = 0.95 $ucum#mg/dL "milligram per deciliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248152002 "Female (finding)"
* note.text = "Nierenfunktion noch normal — die Proteinurie ist hier das einzige Warnsignal."

Instance: mii-exa-test-data-patient-13-labobs-agalsidase
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Alpha-Galaktosidase-A-Aktivität in Leukozyten (Patient 13) — erniedrigt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000053, 24049-9, Alpha galactosidase A [Enzymatic activity/mass] in Leukocytes, mii-exa-test-data-patient-13, mii-exa-test-data-patient-13-encounter-1, 2023-11-20T09:00:00+01:00, 2023-11-20T14:00:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-13-labrequest-1)
* valueQuantity = 12.4 $ucum#nmol/h/mg "nanomol pro Stunde und Milligramm Protein"
* interpretation = $v3-ObservationInterpretation#L "Low"
* referenceRange.low = 30 $ucum#nmol/h/mg "nanomol pro Stunde und Milligramm Protein"
* referenceRange.high = 90 $ucum#nmol/h/mg "nanomol pro Stunde und Milligramm Protein"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* note.text = "Bei heterozygoten Frauen kann die Enzymaktivitaet aufgrund der X-Inaktivierung auch normal ausfallen — ein normaler Wert schliesst Morbus Fabry bei Frauen nicht aus. Hier deutlich erniedrigt."

// ============================================================================
// Enzymersatztherapie
// ============================================================================
Instance: mii-exa-test-data-medication-agalsidase-beta
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Agalsidase beta 35 mg Pulver für Infusionslösung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#A16AB04 "Agalsidase beta"
* code.text = "Agalsidase beta 35 mg"
* form.coding[EDQM] = $standardterms#50043000 "Powder for concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#424725004 "Agalsidase beta (substance)"
* ingredient.itemCodeableConcept.text = "Agalsidase beta"
* ingredient.strength.numerator = 35 'mg' "milligram"
* ingredient.strength.denominator = 1 $standardterms#50043000 "Powder for concentrate for solution for infusion"

Instance: mii-exa-test-data-patient-13-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Usage: #example
Description: "MedicationRequest: Agalsidase beta 1 mg/kg alle zwei Wochen i.v. (Enzymersatztherapie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000041"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-agalsidase-beta)
* subject = Reference(mii-exa-test-data-patient-13)
* encounter = Reference(mii-exa-test-data-patient-13-encounter-3)
* authoredOn = "2024-01-15T11:00:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
// Indikation ist die genetisch gesicherte Diagnose, nicht die klinische —
// die Kostenuebernahme der ERT setzt den molekulargenetischen Nachweis voraus.
* reasonReference = Reference(mii-exa-test-data-patient-13-seltene-diagnose-genetisch)
* note.text = "Erste Infusion am 15.01.2024 unter stationaerer Ueberwachung wegen moeglicher Infusionsreaktionen; danach alle 14 Tage ambulant."
* dosageInstruction.sequence = 1
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-01-15"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 14
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 62 $ucum#mg "mg"
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-13-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Erste Agalsidase-beta-Infusion (Patient 13)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000041"
* status = #completed
* category = $medication-admin-category#outpatient
* medicationReference = Reference(mii-exa-test-data-medication-agalsidase-beta)
* subject = Reference(mii-exa-test-data-patient-13)
* context = Reference(mii-exa-test-data-patient-13-encounter-3)
* effectivePeriod.start = "2024-01-15T11:30:00+01:00"
* effectivePeriod.end = "2024-01-15T12:45:00+01:00"
* request = Reference(mii-exa-test-data-patient-13-medrequest-1)
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-13-seltene-diagnose-genetisch)
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.dose = 62 $ucum#mg "mg"
* note.text = "Infusion ueber 75 Minuten mit einschleichender Rate, keine Infusionsreaktion."

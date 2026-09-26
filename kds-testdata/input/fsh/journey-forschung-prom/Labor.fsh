// ============================================================================
// JOURNEY Patient-11 — Modul Laborbefund
// Herzinsuffizienz-Basislabor am zweiten Tag des Index-Aufenthalts.
// Anforderungscode ist der NT-proBNP-Code; Kreatinin und Kalium sind als
// begleitende Parameter derselben Anforderung geführt (code.text benennt das).
// ============================================================================

Instance: mii-exa-test-data-patient-11-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
Usage: #example
Description: "ServiceRequest: Herzinsuffizienz-Basislabor für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* intent = #order
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* identifier[anforderung].value = "LA_000011"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* category.coding[laboratory] = $observation-category#laboratory
* category.coding[laboratory].display = "Laboratory"
* code = $loinc#33762-6 "Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma"
* code.text = "NT-proBNP, Kreatinin, Kalium (Herzinsuffizienz-Basislabor)"
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* authoredOn = "2025-01-21T07:10:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)

Instance: mii-exa-test-data-patient-11-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Herzinsuffizienz-Basislabor Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnosticReport(LDR_000011, mii-exa-test-data-patient-11)
* basedOn = Reference(mii-exa-test-data-patient-11-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* effectiveDateTime = "2025-01-21T07:35:00+01:00"
* issued = "2025-01-21T09:02:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* result[0] = Reference(mii-exa-test-data-patient-11-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-11-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-11-labobs-3)
* conclusion = "NT-proBNP massiv erhöht, vereinbar mit kardialer Dekompensation. Kreatinin leicht erhöht (kardiorenales Syndrom)."

// NT-proBNP — der Leitparameter der Journey
Instance: mii-exa-test-data-patient-11-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: NT-proBNP für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000031, 33762-6, Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-11, mii-exa-test-data-patient-11-encounter-1, 2025-01-21T07:35:00+01:00, 2025-01-21T09:02:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-11-labrequest-1)
* valueQuantity = 3840 $ucum#pg/mL "picogram per milliliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.high = 125 $ucum#pg/mL "picogram per milliliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* note.text = "Ausschlussgrenze chronische Herzinsuffizienz: < 125 pg/mL"

// Kreatinin — kardiorenales Syndrom
Instance: mii-exa-test-data-patient-11-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Kreatinin im Serum für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000032, 2160-0, Creatinine [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-11, mii-exa-test-data-patient-11-encounter-1, 2025-01-21T07:35:00+01:00, 2025-01-21T09:02:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-11-labrequest-1)
* valueQuantity = 1.42 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0.51 $ucum#mg/dL "milligram per deciliter"
* referenceRange.high = 0.95 $ucum#mg/dL "milligram per deciliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248152002 "Female (finding)"

// Kalium — unter Diuretika-/RAAS-Therapie überwachungspflichtig
Instance: mii-exa-test-data-patient-11-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Kalium im Serum für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000033, 2823-3, Potassium [Moles/volume] in Serum or Plasma, mii-exa-test-data-patient-11, mii-exa-test-data-patient-11-encounter-1, 2025-01-21T07:35:00+01:00, 2025-01-21T09:02:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-11-labrequest-1)
* valueQuantity = 4.8 $ucum#mmol/L "millimole per liter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 3.5 $ucum#mmol/L "millimole per liter"
* referenceRange.high = 5.1 $ucum#mmol/L "millimole per liter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

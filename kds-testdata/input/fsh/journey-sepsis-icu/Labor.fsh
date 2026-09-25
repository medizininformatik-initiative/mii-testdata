// ============================================================================
// JOURNEY Patient-12 — Modul Laborbefund
// Sepsis-Basislabor bei Aufnahme (2025-03-08). Laktat und Procalcitonin sind
// die Parameter, an denen die Sepsis-Surveillance ansetzt.
// ============================================================================

Instance: mii-exa-test-data-patient-12-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
Usage: #example
Description: "ServiceRequest: Sepsis-Basislabor für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* intent = #order
* priority = #stat
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* identifier[anforderung].value = "LA_000012"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* category.coding[laboratory] = $observation-category#laboratory
* category.coding[laboratory].display = "Laboratory"
* code = $loinc#2524-7 "Lactate [Moles/volume] in Serum or Plasma"
* code.text = "Sepsis-Basislabor (Laktat, CRP, Procalcitonin, Leukozyten)"
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-1)
* authoredOn = "2025-03-08T14:35:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)

Instance: mii-exa-test-data-patient-12-labreport-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
Description: "DiagnosticReport: Sepsis-Basislabor Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnosticReport(LDR_000012, mii-exa-test-data-patient-12)
* basedOn = Reference(mii-exa-test-data-patient-12-labrequest-1)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-1)
* effectiveDateTime = "2025-03-08T14:45:00+01:00"
* issued = "2025-03-08T15:20:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* result[0] = Reference(mii-exa-test-data-patient-12-labobs-1)
* result[1] = Reference(mii-exa-test-data-patient-12-labobs-2)
* result[2] = Reference(mii-exa-test-data-patient-12-labobs-3)
* result[3] = Reference(mii-exa-test-data-patient-12-labobs-4)
* conclusion = "Laktat 4.8 mmol/L, Procalcitonin 28 ng/mL, CRP 312 mg/L, Leukozytose 23.4/nL — Konstellation eines septischen Schocks."

Instance: mii-exa-test-data-patient-12-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Laktat im Plasma für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000041, 2524-7, Lactate [Moles/volume] in Serum or Plasma, mii-exa-test-data-patient-12, mii-exa-test-data-patient-12-encounter-1, 2025-03-08T14:45:00+01:00, 2025-03-08T15:20:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-12-labrequest-1)
* valueQuantity = 4.8 $ucum#mmol/L "millimole per liter"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* referenceRange.low = 0.5 $ucum#mmol/L "millimole per liter"
* referenceRange.high = 1.6 $ucum#mmol/L "millimole per liter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* note.text = "Laktat > 2 mmol/L trotz Volumengabe — Kriterium des septischen Schocks (Sepsis-3)."

Instance: mii-exa-test-data-patient-12-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Procalcitonin im Serum für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000042, 33959-8, Procalcitonin [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-12, mii-exa-test-data-patient-12-encounter-1, 2025-03-08T14:45:00+01:00, 2025-03-08T15:20:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-12-labrequest-1)
* valueQuantity = 28.4 $ucum#ng/mL "nanogram per milliliter"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* referenceRange.high = 0.5 $ucum#ng/mL "nanogram per milliliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* note.text = "PCT-Verlauf steuert die Therapiedauer im Stewardship-Protokoll."

Instance: mii-exa-test-data-patient-12-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: C-reaktives Protein für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000043, 1988-5, C reactive protein [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-12, mii-exa-test-data-patient-12-encounter-1, 2025-03-08T14:45:00+01:00, 2025-03-08T15:20:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-12-labrequest-1)
* valueQuantity = 312 $ucum#mg/L "milligram per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.high = 5 $ucum#mg/L "milligram per liter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

Instance: mii-exa-test-data-patient-12-labobs-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Usage: #example
Description: "Observation: Leukozyten im Blut für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddLabObservation(LO_000044, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-12, mii-exa-test-data-patient-12-encounter-1, 2025-03-08T14:45:00+01:00, 2025-03-08T15:20:00+01:00)
* code.coding[0].version = "2.78"
* basedOn = Reference(mii-exa-test-data-patient-12-labrequest-1)
* valueQuantity = 23.4 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 3.9 $ucum#/nL "/nanoliter"
* referenceRange.high = 10.5 $ucum#/nL "/nanoliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"

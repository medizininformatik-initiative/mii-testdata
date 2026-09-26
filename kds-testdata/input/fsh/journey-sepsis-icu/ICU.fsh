// ============================================================================
// JOURNEY Patient-12 — Modul Intensivmedizin (ICU)
//
// Der SOFA-Score ist hier dreimal erhoben (Tag 1 / 5 / 8). Das ICU-Modulbundle
// hat pro Score genau EINE Instanz — ein Verlauf ist dort nicht abbildbar,
// obwohl genau der Verlauf ("delta SOFA") in Sepsis-Studien der
// Zielparameter ist.
// ============================================================================

RuleSet: JourneyIcuBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)

// ----------------------------------------------------------------------------
// Geräte
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-device-vent
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: Beatmungsgerät Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-VENT-012"
* status = #active
* deviceName[+].name = "Draeger Evita V500"
* deviceName[=].type = #manufacturer-name
* type = $sct#706172005 "Ventilator (physical object)"
* version.value = "SW 2.64"
* patient = Reference(mii-exa-test-data-patient-12)

Instance: mii-exa-test-data-patient-12-icu-dm-vent
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingestellte-gemessene-parameter-beatmung
Usage: #example
Description: "ICU DeviceMetric: Beatmungsparameter Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = $sct#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(mii-exa-test-data-patient-12-icu-device-vent)
* category = #measurement

// ----------------------------------------------------------------------------
// Beatmung als Prozedur (Klammer der Beatmungsparameter)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-beatmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmung
Usage: #example
Description: "ICU Procedure: Invasive Beatmung Patient 12 (08.03.-16.03., 187 Stunden)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* performedPeriod.start = "2025-03-08T18:00:00+01:00"
* performedPeriod.end = "2025-03-16T13:00:00+01:00"
* category = $sct#40617009 "Artificial ventilation"
* code.coding[sct] = $sct#243147009 "Controlled ventilation (procedure)"
// Beatmung 08.03. 18:00 bis 16.03. 13:00 = 187 Stunden (> 95 h), erfolgreiche
// Extubation, 8 Behandlungstage auf der Intensivstation -> 8-718.72
// (Beatmungsentwoehnung nicht auf Beatmungsentwoehnungs-Einheit).
* code.coding[ops] = $ops#8-718.72 "Mindestens 6 bis höchstens 10 Behandlungstage"
* code.coding[ops].version = "2024"
* extension[Dokumentationsdatum].valueDateTime = "2025-03-16T14:00:00+01:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)
* bodySite.coding[snomed-ct] = $sct#44567001 "Trachea structure (body structure)"
* note.text = "Lungenprotektive Beatmung (6 mL/kg ideales Koerpergewicht), taegliche Spontanatmungsversuche ab 13.03., Extubation am 16.03."

// ----------------------------------------------------------------------------
// Beatmungsparameter (Tag 1 der Beatmung)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-vent-peep-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-positiv-endexpiratorischer-druck
Usage: #example
Description: "ICU Observation: PEEP 12 cmH2O (Patient 12, Tag 1)"
* insert JourneyIcuBase
* partOf = Reference(mii-exa-test-data-patient-12-icu-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250854009 "Positive end expiratory pressure (observable entity)"
* code.coding[loinc] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#151976 "Positive end expiratory pressure applied to the airway."
* effectiveDateTime = "2025-03-09T06:00:00+01:00"
* valueQuantity = 12 'cm[H2O]' "cmH2O"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-peep-12-1"
* issued = "2025-03-09T06:05:00+01:00"
* device = Reference(mii-exa-test-data-patient-12-icu-dm-vent)

Instance: mii-exa-test-data-patient-12-icu-vent-fio2-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-inspiratorische-sauerstofffraktion
Usage: #example
Description: "ICU Observation: FiO2 0.6 (Patient 12, Tag 1)"
* insert JourneyIcuBase
* partOf = Reference(mii-exa-test-data-patient-12-icu-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#250774007 "Inspired oxygen concentration (observable entity)"
* effectiveDateTime = "2025-03-09T06:00:00+01:00"
* valueQuantity = 0.6 '%' "percent"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-fio2-12-1"
* issued = "2025-03-09T06:05:00+01:00"
* device = Reference(mii-exa-test-data-patient-12-icu-dm-vent)

Instance: mii-exa-test-data-patient-12-icu-vent-vt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-atemzugvolumen-einstellung
Usage: #example
Description: "ICU Observation: Atemzugvolumen 430 mL (Patient 12, lungenprotektiv)"
* insert JourneyIcuBase
* partOf = Reference(mii-exa-test-data-patient-12-icu-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#416811008 "Tidal volume setting (observable entity)"
* code.coding[loinc] = $loinc#20112-9 "Tidal volume setting Ventilator"
* code.coding[IEEE-11073] = $11073-10101#16929196 "MDC_VENT_VOL_TIDAL_SETTING"
* effectiveDateTime = "2025-03-09T06:00:00+01:00"
* valueQuantity = 430 'mL' "mL"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-vent-vt-12-1"
* issued = "2025-03-09T06:05:00+01:00"
* device = Reference(mii-exa-test-data-patient-12-icu-dm-vent)
* note.text = "6 mL/kg ideales Koerpergewicht (72 kg IBW bei 178 cm)."

// ----------------------------------------------------------------------------
// SOFA-Verlauf — der Kern des ICU-Anteils
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-sofa-t1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa
Usage: #example
Description: "ICU Score: SOFA 12 (Patient 12, Tag 1 — septischer Schock)"
* insert JourneyIcuBase
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#96789-3 "Sequential Organ Failure Assessment SOFA"
* code.coding[sct] = $sct#1187491009 "Sequential Organ Failure Assessment score (observable entity)"
* effectiveDateTime = "2025-03-09T09:00:00+01:00"
* valueInteger = 12
* component[respiratory].code.coding[loinc] = $loinc#96823-0 "Respiration [Score] SOFA"
* component[respiratory].valueInteger = 4
* component[coagulation].code.coding[loinc] = $loinc#96824-8 "Coagulation [Score] SOFA"
* component[coagulation].valueInteger = 2
* component[hepatic].code.coding[loinc] = $loinc#96825-5 "Liver [Score] SOFA"
* component[hepatic].valueInteger = 1
* component[cardiovascular].code.coding[loinc] = $loinc#96826-3 "Cardiovascular [Score] SOFA"
* component[cardiovascular].valueInteger = 4
* component[neurological].code.coding[loinc] = $loinc#96827-1 "Central nervous system [Score] SOFA"
* component[neurological].valueInteger = 1
* component[renal].code.coding[loinc] = $loinc#96828-9 "Renal [Score] SOFA"
* component[renal].valueInteger = 0
* issued = "2025-03-09T09:30:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Kreislauf 4 Punkte unter hochdosiertem Noradrenalin; Respiration 4 bei Horovitz < 100 unter Beatmung."

Instance: mii-exa-test-data-patient-12-icu-sofa-t5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa
Usage: #example
Description: "ICU Score: SOFA 9 (Patient 12, Tag 5 — zwei Tage nach Therapieumstellung)"
* insert JourneyIcuBase
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#96789-3 "Sequential Organ Failure Assessment SOFA"
* code.coding[sct] = $sct#1187491009 "Sequential Organ Failure Assessment score (observable entity)"
* effectiveDateTime = "2025-03-13T09:00:00+01:00"
* valueInteger = 9
* component[respiratory].code.coding[loinc] = $loinc#96823-0 "Respiration [Score] SOFA"
* component[respiratory].valueInteger = 3
* component[coagulation].code.coding[loinc] = $loinc#96824-8 "Coagulation [Score] SOFA"
* component[coagulation].valueInteger = 1
* component[hepatic].code.coding[loinc] = $loinc#96825-5 "Liver [Score] SOFA"
* component[hepatic].valueInteger = 1
* component[cardiovascular].code.coding[loinc] = $loinc#96826-3 "Cardiovascular [Score] SOFA"
* component[cardiovascular].valueInteger = 3
* component[neurological].code.coding[loinc] = $loinc#96827-1 "Central nervous system [Score] SOFA"
* component[neurological].valueInteger = 1
* component[renal].code.coding[loinc] = $loinc#96828-9 "Renal [Score] SOFA"
* component[renal].valueInteger = 1
* issued = "2025-03-13T09:30:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Rueckgang um 3 Punkte nach Umstellung auf Meropenem am 11.03."

Instance: mii-exa-test-data-patient-12-icu-sofa-t8
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa
Usage: #example
Description: "ICU Score: SOFA 4 (Patient 12, Tag 8 — Extubationstag)"
* insert JourneyIcuBase
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#96789-3 "Sequential Organ Failure Assessment SOFA"
* code.coding[sct] = $sct#1187491009 "Sequential Organ Failure Assessment score (observable entity)"
* effectiveDateTime = "2025-03-16T09:00:00+01:00"
* valueInteger = 4
* component[respiratory].code.coding[loinc] = $loinc#96823-0 "Respiration [Score] SOFA"
* component[respiratory].valueInteger = 2
* component[coagulation].code.coding[loinc] = $loinc#96824-8 "Coagulation [Score] SOFA"
* component[coagulation].valueInteger = 0
* component[hepatic].code.coding[loinc] = $loinc#96825-5 "Liver [Score] SOFA"
* component[hepatic].valueInteger = 0
* component[cardiovascular].code.coding[loinc] = $loinc#96826-3 "Cardiovascular [Score] SOFA"
* component[cardiovascular].valueInteger = 0
* component[neurological].code.coding[loinc] = $loinc#96827-1 "Central nervous system [Score] SOFA"
* component[neurological].valueInteger = 1
* component[renal].code.coding[loinc] = $loinc#96828-9 "Renal [Score] SOFA"
* component[renal].valueInteger = 1
* issued = "2025-03-16T09:30:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note.text = "Katecholaminfrei seit 14.03.; Extubation am selben Tag um 13:00."

// ----------------------------------------------------------------------------
// Bewusstseinslage
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-gcs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-gcs
Usage: #example
Description: "ICU Score: Glasgow Coma Scale 10 (E3 V2 M5, Patient 12 unter Sedierung)"
* insert JourneyIcuBase
* category[survey] = $observation-category#survey "Survey"
* category[assessment-scale] = $sct#273249006 "Assessment scales (assessment scale)"
* code.coding[loinc] = $loinc#9269-2 "Glasgow coma score total"
* code.coding[sct] = $sct#248241002
* code.coding[ieee11073] = $11073-10101#153728
* effectiveDateTime = "2025-03-09T08:00:00+01:00"
* valueQuantity = 10 '{score}' "{score}"
* component[GCSeyes].code.coding = $loinc#9267-6 "Glasgow coma score eye opening"
* component[GCSeyes].valueCodeableConcept = $loinc#LA6555-2 "Eye opening to verbal command"
* component[GCSverbal].code.coding = $loinc#9270-0 "Glasgow coma score verbal"
* component[GCSverbal].valueCodeableConcept = $loinc#LA6558-6 "Incomprehensible sounds"
* component[GCSmotor].code.coding = $loinc#9268-4 "Glasgow coma score motor"
* component[GCSmotor].valueCodeableConcept = $loinc#LA6566-9 "Localizing pain"
* issued = "2025-03-09T08:15:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"

Instance: mii-exa-test-data-patient-12-icu-rass-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-rass
Usage: #example
Description: "ICU Score: RASS -2 (Patient 12, leichte Sedierung im Weaning)"
* insert JourneyIcuBase
* category[exam] = $observation-category#exam "Exam"
* code.coding = $sct#1345050000 "Richmond Agitation Sedation Scale score (observable entity)"
* effectiveDateTime = "2025-03-15T08:00:00+01:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA33964-0 "Light sedation -2"
* issued = "2025-03-15T08:10:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* note.text = "Sedierungsreduktion im Rahmen der Beatmungsentwoehnung."

// ----------------------------------------------------------------------------
// Flüssigkeitsbilanz
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-icu-bilanz-urin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin
Usage: #example
Description: "ICU Observation: Urinausfuhr 620 mL/24h (Patient 12, Tag 1 — Oligurie)"
* insert JourneyIcuBase
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[loinc] = $loinc#9187-6 "Urine output"
* effectiveDateTime = "2025-03-09T06:00:00+01:00"
* valueQuantity = 620 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-urin-12-1"
* issued = "2025-03-09T06:10:00+01:00"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#258104002 "Measured (qualifier value)"
* bodySite = $sct#89837001 "Urinary bladder structure (body structure)"
* note.text = "Oligurie (< 0.5 mL/kg/h) bei septischer Kreislaufsituation."

Instance: mii-exa-test-data-patient-12-icu-bilanz-tages-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-tagesbilanz-fluessigkeit
Usage: #example
Description: "ICU Observation: Tagesbilanz +3250 mL (Patient 12, Tag 1)"
* insert JourneyIcuBase
* category.coding[kdsicu-category] = $sct#364396009 "Fluid balance observable (observable entity)"
* code.coding[sct] = $sct#251856003 "Fluid balance status (observable entity)"
* code.coding[loinc] = $loinc#9097-7 "Fluid balance 24 hour"
* effectiveDateTime = "2025-03-09T06:00:00+01:00"
* valueQuantity = 3250 'ml' "ml"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-bilanz-tages-12-1"
* issued = "2025-03-09T06:10:00+01:00"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Deutlich positive Bilanz nach initialer Volumentherapie des septischen Schocks."

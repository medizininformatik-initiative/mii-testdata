// ============================================================================
// ISiK Vitalparameter Test Data - Laboruntersuchungs-Familie (ISiK 6.0.0)
// Basisprofil ISiKLaboruntersuchung (konkret, generische Instanz: Kalium)
// plus alle 9 analytspezifischen Ableitungen: CRP, GFR, Hb, PCT,
// Serumkreatinin, Serumnatrium, TSH, Thrombozyten, Troponin.
// LOINC-Codes und UCUM-Units stammen aus den required-Bindings
// ObservationCodes<X> / ObservationUnits<X> des ISiK-Pakets.
// Aufnahmelabor 2026-05-12, 07:30 Uhr (Befundfreigabe 09:00 Uhr).
// ============================================================================

// Gemeinsames Geruest analog KDS-Labor (identifier[analyseBefundCode] mit
// Typ OBI ist im ISiK-Profil 0..1 MS - hier durchgaengig belegt)
RuleSet: IsikLaborBase(idvalue)
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "{idvalue}"
* status = #final
* category[observation-category] = $observation-category#laboratory "Laboratory"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* encounter = Reference(mii-exa-test-data-isik-vitalparameter-encounter-1)
* effectiveDateTime = "2026-05-12T07:30:00+02:00"
* issued = "2026-05-12T09:00:00+02:00"
* performer.display = "Zentrallabor Charite"

// Generische ISiKLaboruntersuchung (Basisprofil ist NICHT abstrakt):
// Kalium im Serum als Beispiel eines nicht analytspezifisch profilierten Werts
Instance: mii-exa-test-data-isik-vitalparameter-labor-generisch-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchung
Usage: #example
Description: "ISiK Laboruntersuchung (generisch): Kalium im Serum 4.1 mmol/L"
* insert IsikLaborBase(ISIK-VITAL-LAB-000)
* code.coding[loinc] = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* code.text = "Kalium (Serum)"
* valueQuantity = 4.1 'mmol/L' "mmol/L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 3.5 'mmol/L' "mmol/L"
* referenceRange.high = 5.1 'mmol/L' "mmol/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

// CRP: 4.2 mg/L (normwertig)
Instance: mii-exa-test-data-isik-vitalparameter-labor-crp-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungCRP
Usage: #example
Description: "ISiK Laboruntersuchung CRP: 4.2 mg/L"
* insert IsikLaborBase(ISIK-VITAL-LAB-001)
* code.coding[loinc] = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"
* code.coding[snomed] = $sct#55235003 "C-reactive protein measurement (procedure)"
* code.text = "C-reaktives Protein (Serum)"
* valueQuantity = 4.2 'mg/L' "milligram per liter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.high = 5 'mg/L' "milligram per liter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

// GFR (CKD-EPI 2021): 78 mL/min/1.73m2 - UCUM-Code "mL/min/(1.73)" ist im
// required-Binding ObservationUnitsGFR fixiert (s. Research-Doku, Upstream-Note)
Instance: mii-exa-test-data-isik-vitalparameter-labor-gfr-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungGFR
Usage: #example
Description: "ISiK Laboruntersuchung GFR: 78 mL/min/1.73m2 (CKD-EPI 2021)"
* insert IsikLaborBase(ISIK-VITAL-LAB-002)
* code.coding[loinc] = $loinc#98979-8 "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"
* code.coding[snomed] = $sct#80274001 "Glomerular filtration rate (observable entity)"
* code.text = "eGFR (CKD-EPI 2021)"
* valueQuantity = 78 'mL/min/(1.73)' "milliliter pro Minute pro Koerperoberflaeche von 1,73 m2"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Haemoglobin: 13.2 g/dL
Instance: mii-exa-test-data-isik-vitalparameter-labor-hb-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungHb
Usage: #example
Description: "ISiK Laboruntersuchung Haemoglobin: 13.2 g/dL"
* insert IsikLaborBase(ISIK-VITAL-LAB-003)
* code.coding[loinc] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.coding[snomed] = $sct#416125006 "Hemoglobin level (observable entity)"
* code.text = "Haemoglobin (EDTA-Blut)"
* valueQuantity = 13.2 'g/dL' "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 12 'g/dL' "gram per deciliter"
* referenceRange.high = 16 'g/dL' "gram per deciliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

// Procalcitonin: 0.08 ng/mL (kein Hinweis auf bakterielle Infektion)
Instance: mii-exa-test-data-isik-vitalparameter-labor-pct-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungPCT
Usage: #example
Description: "ISiK Laboruntersuchung Procalcitonin: 0.08 ng/mL"
* insert IsikLaborBase(ISIK-VITAL-LAB-004)
* code.coding[loinc] = $loinc#33959-8 "Procalcitonin [Mass/volume] in Serum or Plasma"
* code.coding[snomed] = $sct#418752001 "Procalcitonin measurement (procedure)"
* code.text = "Procalcitonin (Serum)"
* valueQuantity = 0.08 'ng/mL' "nanogram per milliliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Serumkreatinin: 0.9 mg/dL
Instance: mii-exa-test-data-isik-vitalparameter-labor-kreatinin-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungSerumkreatinin
Usage: #example
Description: "ISiK Laboruntersuchung Serumkreatinin: 0.9 mg/dL"
* insert IsikLaborBase(ISIK-VITAL-LAB-005)
* code.coding[loinc] = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* code.coding[snomed] = $sct#70901006 "Creatinine measurement (procedure)"
* code.text = "Kreatinin (Serum)"
* valueQuantity = 0.9 'mg/dL' "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Serumnatrium: 141 mmol/L (einziger Code im required-Binding: 2951-2)
Instance: mii-exa-test-data-isik-vitalparameter-labor-natrium-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungSerumnatrium
Usage: #example
Description: "ISiK Laboruntersuchung Serumnatrium: 141 mmol/L"
* insert IsikLaborBase(ISIK-VITAL-LAB-006)
* code.coding[loinc] = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* code.text = "Natrium (Serum)"
* valueQuantity = 141 'mmol/L' "millimol per liter"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// TSH: 1.8 mIU/L
Instance: mii-exa-test-data-isik-vitalparameter-labor-tsh-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTSH
Usage: #example
Description: "ISiK Laboruntersuchung TSH: 1.8 mIU/L"
* insert IsikLaborBase(ISIK-VITAL-LAB-007)
* code.coding[loinc] = $loinc#3016-3 "Thyrotropin [Units/volume] in Serum or Plasma"
* code.coding[snomed] = $sct#61167004 "Thyroid stimulating hormone measurement (procedure)"
* code.text = "TSH basal (Serum)"
* valueQuantity = 1.8 'm[IU]/L' "milli IU per liter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 0.4 'm[IU]/L' "milli IU per liter"
* referenceRange.high = 4.0 'm[IU]/L' "milli IU per liter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"

// Thrombozyten: 265 /nL (UCUM 10*3/uL gemaess Units-Binding)
Instance: mii-exa-test-data-isik-vitalparameter-labor-thrombozyten-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungThrombozyten
Usage: #example
Description: "ISiK Laboruntersuchung Thrombozyten: 265 x10^3/uL"
* insert IsikLaborBase(ISIK-VITAL-LAB-008)
* code.coding[loinc] = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* code.coding[snomed] = $sct#365632008 "Finding of platelet count (finding)"
* code.text = "Thrombozyten (EDTA-Blut)"
* valueQuantity = 265 '10*3/uL' "10^3 per microliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// Troponin I (kardial): 0.02 ng/mL (Synkopenabklaerung, unauffaellig)
Instance: mii-exa-test-data-isik-vitalparameter-labor-troponin-1
InstanceOf: https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTroponin
Usage: #example
Description: "ISiK Laboruntersuchung Troponin I: 0.02 ng/mL"
* insert IsikLaborBase(ISIK-VITAL-LAB-009)
* code.coding[loinc] = $loinc#10839-9 "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
* code.coding[snomed] = $sct#105000003 "Troponin measurement (procedure)"
* code.text = "Troponin I (Serum)"
* valueQuantity = 0.02 'ng/mL' "nanogram per milliliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"

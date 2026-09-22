// ============================================================================
// MII Lungenfunktion Test Data - Diffusions-Observations
// DLCO, DLCOc, KCO, KCOc, VA, Hb
// Befund: normale CO-Diffusionskapazitaet
// ============================================================================

// DLCO (CO-Diffusionskapazitaet, Single-Breath)
Instance: mii-exa-test-data-lungenfunktion-dlco-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dlco
Usage: #example
Description: "Lungenfunktion DLCO: 7.20 mmol/(min.kPa) (92 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[sct] = $sct20260701#1366665001 "Single breath carbon monoxide diffusing capacity (observable entity)"
* code.coding[loinc] = $loinc#19911-7 "Diffusion capacity.carbon monoxide"
* valueQuantity = 7.20 'mmol/(min.kPa)' "mmol/(min.kPa)"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#264284001 "Single-breath technique (qualifier value)"
* component[predicted].code.coding[loinc] = $loinc#19910-9 "Diffusion capacity.carbon monoxide Predicted"
* component[predicted].valueQuantity = 7.80 'mmol/(min.kPa)' "mmol/(min.kPa)"
* component[percentPredicted].code.coding[loinc] = $loinc#98130-8 "Diffusion capacity.carbon monoxide/Predicted"
* component[percentPredicted].valueQuantity = 92 '%' "%"

// DLCOc (Haemoglobin-korrigierte CO-Diffusionskapazitaet)
Instance: mii-exa-test-data-lungenfunktion-dlcoc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dlcoc
Usage: #example
Description: "Lungenfunktion DLCOc: 7.45 mmol/(min.kPa) (Hb-korrigiert)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[loinc] = $loinc#19913-3 "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
* derivedFrom = Reference(mii-exa-test-data-lungenfunktion-hb-1)
* valueQuantity = 7.45 'mmol/(min.kPa)' "mmol/(min.kPa)"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#264284001 "Single-breath technique (qualifier value)"

// KCO (Transferkoeffizient, DLCO/VA)
Instance: mii-exa-test-data-lungenfunktion-kco-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-kco
Usage: #example
Description: "Lungenfunktion KCO: 1.45 mmol/(min.kPa.L) (95 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[sct] = $sct20260701#251952002 "Transfer coefficient (respiratory measure) (observable entity)"
* code.coding[loinc] = $loinc#19916-6 "Diffusion capacity/Alveolar volume"
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-dlco-1)
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-va-1)
* valueQuantity = 1.45 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#264284001 "Single-breath technique (qualifier value)"
* component[predicted].code.coding[loinc] = $loinc#19915-8 "Diffusion capacity/Alveolar volume Predicted"
* component[predicted].valueQuantity = 1.52 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
* component[percentPredicted].code.coding[loinc] = $loinc#98203-3 "(Diffusion capacity/Alveolar volume)/predicted"
* component[percentPredicted].valueQuantity = 95 '%' "%"

// KCOc (Hb-korrigierter Transferkoeffizient)
Instance: mii-exa-test-data-lungenfunktion-kcoc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-kcoc
Usage: #example
Description: "Lungenfunktion KCOc: 1.50 mmol/(min.kPa.L) (Hb-korrigiert)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[loinc] = $loinc#69578-3 "Diffusion capacity.carbon monoxide/Alveolar volume adjusted for hemoglobin"
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-dlco-1)
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-va-1)
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-hb-1)
* valueQuantity = 1.50 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#264284001 "Single-breath technique (qualifier value)"

// VA (Alveolarvolumen)
Instance: mii-exa-test-data-lungenfunktion-va-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-va
Usage: #example
Description: "Lungenfunktion VA: 4.95 L"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[sct] = $sct20260701#251953007 "Alveolar volume (observable entity)"
* valueQuantity = 4.95 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#264284001 "Single-breath technique (qualifier value)"

// Hb (Haemoglobin fuer die Hb-Korrektur)
Instance: mii-exa-test-data-lungenfunktion-hb-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-hb
Usage: #example
Description: "Lungenfunktion Hb: 13.8 g/dL"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[sct] = $sct20260701#38082009 "Hemoglobin (substance)"
* code.coding[loinc] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* valueQuantity = 13.8 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 12.0 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"
* referenceRange.high = 15.5 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"

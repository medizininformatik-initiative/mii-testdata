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
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-docref-rohdaten-1)
* referenceRange.low = 6.20 'mmol/(min.kPa)' "mmol/(min.kPa)"
* referenceRange.high = 9.40 'mmol/(min.kPa)' "mmol/(min.kPa)"
// Das Single-Breath-Manoever liefert DLCO und VA in einem Atemzug; VA ist
// daher Mitglied derselben Messung.
* hasMember = Reference(mii-exa-test-data-lungenfunktion-va-1)

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
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-dlco-1)
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-hb-1)
* referenceRange.low = 6.20 'mmol/(min.kPa)' "mmol/(min.kPa)"
* referenceRange.high = 9.40 'mmol/(min.kPa)' "mmol/(min.kPa)"
// Z-Score (GLI-Referenz). Der SNOMED-Code ist im Profil per Pattern fixiert,
// der Wert ist dimensionslos (UCUM "1", Anzeige "SD").
// Die Slices predicted/percentPredicted bleiben leer: ihre code.coding[sct|loinc]
// tragen im Profil noch ein patternCoding mit code = "TODO".
* component[z-score].code.coding[sct] = $sct20260701#1078210003 "Z-score calculation technique (qualifier value)"
* component[z-score].valueQuantity = -0.4 '1' "SD"

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
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-dlco-1)
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-va-1)
* referenceRange.low = 1.20 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
* referenceRange.high = 1.80 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"

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
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-kco-1)
* hasMember[+] = Reference(mii-exa-test-data-lungenfunktion-hb-1)
* referenceRange.low = 1.20 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
* referenceRange.high = 1.80 'mmol/(min.kPa.L)' "mmol/(min.kPa.L)"
// Z-Score wie bei DLCOc; predicted/percentPredicted sind durch das
// patternCoding mit code = "TODO" im Profil blockiert.
* component[z-score].code.coding[sct] = $sct20260701#1078210003 "Z-score calculation technique (qualifier value)"
* component[z-score].valueQuantity = -0.2 '1' "SD"

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
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-docref-rohdaten-1)
* referenceRange.low = 4.50 'L' "L"
* referenceRange.high = 6.90 'L' "L"
// VA wird aus der TLC des Single-Breath-Manoevers abgeleitet.
* hasMember = Reference(mii-exa-test-data-lungenfunktion-tlc-1)
// Z-Score; predicted/percentPredicted sind durch das patternCoding
// mit code = "TODO" im Profil blockiert.
* component[z-score].code.coding[sct] = $sct20260701#1078210003 "Z-score calculation technique (qualifier value)"
* component[z-score].valueQuantity = -0.6 '1' "SD"

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
* method = $sct#258104002 "Measured (qualifier value)"
* derivedFrom = Reference(mii-exa-test-data-lungenfunktion-docref-rohdaten-1)
// Doppelbestimmung: der fuer die Hb-Korrektur verwendete Wert fasst die
// beiden Einzelbestimmungen zusammen.
* hasMember = Reference(mii-exa-test-data-lungenfunktion-hb-2)

// Hb, zweite (kapillaere) Einzelbestimmung
Instance: mii-exa-test-data-lungenfunktion-hb-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-hb
Usage: #example
Description: "Lungenfunktion Hb (kapillaere Kontrollbestimmung): 13.6 g/dL"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-diffusion-messung-1)
* code.coding[sct] = $sct20260701#38082009 "Hemoglobin (substance)"
* code.coding[loinc] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* valueQuantity = 13.6 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 12.0 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"
* referenceRange.high = 15.5 'g{Hemoglobin}/dL' "g{Hemoglobin}/dL"
* method = $sct#258104002 "Measured (qualifier value)"

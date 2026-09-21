// ============================================================================
// MII Lungenfunktion Test Data - Spirometrie-Observations
// BF, FEV1, FVC, FEV1/FVC, IC, ERV (IRV/ERV), MEF50, PEF, VC
// Befund: leichte obstruktive Ventilationsstoerung
// ============================================================================

// Atemfrequenz (BF)
Instance: mii-exa-test-data-lungenfunktion-bf-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bf
Usage: #example
Description: "Lungenfunktion BF: Atemfrequenz 14/min"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct20260701#271625008 "Rate of spontaneous respiration (observable entity)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* effectiveDateTime = "2025-02-18T09:30:00+01:00"
* issued = "2025-02-18T12:00:00+01:00"
* valueQuantity = 14 '/min' "/min"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* referenceRange.low = 12 '/min' "/min"
* referenceRange.high = 18 '/min' "/min"

// FEV1 (forciertes exspiratorisches Volumen in 1 Sekunde)
Instance: mii-exa-test-data-lungenfunktion-fev-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev
Usage: #example
Description: "Lungenfunktion FEV1: 2.10 L (74 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#59328004 "Forced expired volume in 1 second (observable entity)"
* code.coding[loinc] = $loinc#20150-9 "FEV1"
* valueQuantity = 2.10 'L' "L"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* referenceRange.low = 2.31 'L' "L"
* component[predicted].code.coding[sct] = $sct20260701#310520004 "Expected forced expired volume in 1 second (observable entity)"
* component[predicted].code.coding[loinc] = $loinc#20149-1 "FEV1 Predicted"
* component[predicted].valueQuantity = 2.85 'L' "L"
* component[percentPredicted].code.coding[sct] = $sct20260701#313223002 "Percent predicted forced expired volume in one second (observable entity)"
* component[percentPredicted].code.coding[loinc] = $loinc#20152-5 "FEV1 measured/predicted"
* component[percentPredicted].valueQuantity = 74 '%' "%"
* component[z-score].code.coding[sct] = $sct20260701#1078210003 "Z-score calculation technique (qualifier value)"
* component[z-score].valueQuantity.value = -1.9

// FVC (forcierte Vitalkapazitaet)
Instance: mii-exa-test-data-lungenfunktion-fvc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fvc
Usage: #example
Description: "Lungenfunktion FVC: 3.10 L (86 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#50834005 "Forced vital capacity (observable entity)"
* code.coding[loinc] = $loinc#19868-9 "Forced vital capacity [Volume] Respiratory system by Spirometry"
* valueQuantity = 3.10 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[sct] = $sct20260701#310521000 "Expected forced vital capacity (observable entity)"
* component[predicted].code.coding[loinc] = $loinc#19869-7 "Forced vital capacity [Volume] Respiratory system Predicted"
* component[predicted].valueQuantity = 3.60 'L' "L"
* component[percentPredicted].code.coding[sct] = $sct20260701#445210000 "Percentage of predicted forced vital capacity (observable entity)"
* component[percentPredicted].code.coding[loinc] = $loinc#19872-1 "FVC measured/predicted"
* component[percentPredicted].valueQuantity = 86 '%' "%"

// FEV1/FVC (Tiffeneau-Index)
Instance: mii-exa-test-data-lungenfunktion-fev-fvc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev-fvc
Usage: #example
Description: "Lungenfunktion FEV1/FVC: 67.7 % (leichte Obstruktion)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#251944000 "Forced expired volume in one second/forced vital capacity ratio (observable entity)"
* code.coding[loinc] = $loinc#19926-5 "FEV1/FVC"
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-fev-1)
* derivedFrom[+] = Reference(mii-exa-test-data-lungenfunktion-fvc-1)
* valueQuantity = 67.7 '%' "%"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[sct] = $sct20260701#310360002 "Expected forced expiratory volume in one second/Forced vital capacity ratio (observable entity)"
* component[predicted].code.coding[loinc] = $loinc#19925-7 "FEV1/FVC Predicted"
* component[predicted].valueQuantity = 78 '%' "%"

// IC (inspiratorische Kapazitaet)
Instance: mii-exa-test-data-lungenfunktion-ic-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-ic
Usage: #example
Description: "Lungenfunktion IC: 2.40 L"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#29533001 "Inspiratory capacity (observable entity)"
* code.coding[loinc] = $loinc#19852-3 "Inspiratory capacity by Spirometry"
* valueQuantity = 2.40 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#19851-5 "Inspiratory capacity Predicted"
* component[predicted].valueQuantity = 2.60 'L' "L"
* component[percentPredicted].code.coding[loinc] = $loinc#19855-6 "Inspiratory capacity measured/predicted by Spirometry"
* component[percentPredicted].valueQuantity = 92 '%' "%"

// ERV (exspiratorisches Reservevolumen, Profil IRV/ERV)
Instance: mii-exa-test-data-lungenfunktion-irv-erv-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-irv-erv
Usage: #example
Description: "Lungenfunktion ERV: 0.90 L"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#55532004 "Expiratory reserve volume (observable entity)"
* code.coding[loinc] = $loinc#19924-0 "Expiratory reserve"
* valueQuantity = 0.90 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#19923-2 "Expiratory reserve Predicted"
* component[predicted].valueQuantity = 1.10 'L' "L"

// MEF50 (maximaler exspiratorischer Fluss bei 50 % der VC)
Instance: mii-exa-test-data-lungenfunktion-mef-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-mef
Usage: #example
Description: "Lungenfunktion MEF50: 1.90 L/s (deutlich reduziert)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#251920002 "Maximum expiratory flow rate at 50 percent of vital capacity (observable entity)"
* code.coding[loinc] = $loinc#65822-9 "Gas flow FEV 50%"
* valueQuantity = 1.90 'L/s' "L/s"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// PEF (Peak Exspiratory Flow)
Instance: mii-exa-test-data-lungenfunktion-pef-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-pef
Usage: #example
Description: "Lungenfunktion PEF: 5.20 L/s (75 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#18491006 "Peak expiratory flow rate (observable entity)"
* code.coding[loinc] = $loinc#33452-4 "Maximum expiratory gas flow Respiratory system airway"
* valueQuantity = 5.20 'L/s' "L/s"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[sct] = $sct20260701#313192007 "Expected peak expiratory flow rate (observable entity)"
* component[predicted].code.coding[loinc] = $loinc#69974-4 "Maximum expiratory gas flow Respiratory system airway Predicted"
* component[predicted].valueQuantity = 6.90 'L/s' "L/s"
* component[percentPredicted].code.coding[loinc] = $loinc#69977-7 "Maximum expiratory gas flow/Predicted maximum expiratory gas flow Respiratory system airway --pre bronchodilation"
* component[percentPredicted].valueQuantity = 75 '%' "%"

// VC (Vitalkapazitaet, langsam)
Instance: mii-exa-test-data-lungenfunktion-vc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-vc
Usage: #example
Description: "Lungenfunktion VC: 3.30 L (89 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-spirometrie-messung-1)
* code.coding[sct] = $sct20260701#83411002 "Slow vital capacity (observable entity)"
* code.coding[loinc] = $loinc#19866-3 "Vital capacity [Volume] Respiratory system by Spirometry"
* hasMember = Reference(mii-exa-test-data-lungenfunktion-irv-erv-1)
* valueQuantity = 3.30 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#19865-5 "Vital capacity [Volume] Respiratory system Predicted"
* component[predicted].valueQuantity = 3.70 'L' "L"
* component[percentPredicted].code.coding[sct] = $sct20260701#445389005 "Percentage of predicted vital capacity (observable entity)"
* component[percentPredicted].code.coding[loinc] = $loinc#98088-8 "Vital capacity/predicted VC Respiratory system by Spirometry"
* component[percentPredicted].valueQuantity = 89 '%' "%"

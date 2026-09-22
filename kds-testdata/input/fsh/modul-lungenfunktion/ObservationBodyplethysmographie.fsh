// ============================================================================
// MII Lungenfunktion Test Data - Bodyplethysmographie-Observations
// FRC, R_tot, sR_tot, sR_eff, sG_tot, TLC, RV, RV/TLC
// Befund: erhoehter Atemwegswiderstand, leichte Ueberblaehung
// ============================================================================

// FRC (funktionelle Residualkapazitaet)
Instance: mii-exa-test-data-lungenfunktion-frc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-frc
Usage: #example
Description: "Lungenfunktion FRC: 3.40 L (bodyplethysmographisch)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#65825000 "Functional residual capacity (observable entity)"
* code.coding[loinc] = $loinc#19846-5 "Functional residual capacity by Plethysmograph body box"
* valueQuantity = 3.40 'L' "L"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#19847-3 "Functional residual capacity Predicted"
* component[predicted].valueQuantity = 3.00 'L' "L"

// R_tot (totaler Atemwegswiderstand)
Instance: mii-exa-test-data-lungenfunktion-r-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-r
Usage: #example
Description: "Lungenfunktion R_tot: 0.42 kPa/(L/s) (erhoeht)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#16162007 "Total airway resistance (observable entity)"
* code.coding[loinc] = $loinc#20083-2 "Airway resistance mean by Plethysmograph body box"
* valueQuantity = 0.42 'kPa/(L/s)' "kPa/(L/s)"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* referenceRange.high = 0.30 'kPa/(L/s)' "kPa/(L/s)"
* component[percentPredicted].code.coding[loinc] = $loinc#91981-1 "Airway resistance measured/predicted by Plethysmograph body box"
* component[percentPredicted].valueQuantity = 140 '%' "%"

// sR_tot (spezifischer Atemwegswiderstand)
Instance: mii-exa-test-data-lungenfunktion-sr-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-r-spezifisch
Usage: #example
Description: "Lungenfunktion sR_tot: 1.35 kPa.s (erhoeht)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#1366667009 "Specific airway resistance (observable entity)"
* code.coding[loinc] = $loinc#91980-3 "Specific airway resistance by Plethysmograph body box"
* valueQuantity = 1.35 'kPa.s' "kPa.s"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[percentPredicted].code.coding[loinc] = $loinc#91982-9 "Specific airway resistance measured/predicted by Plethysmograph body box"
* component[percentPredicted].valueQuantity = 125 '%' "%"

// sR_eff (spezifischer effektiver Atemwegswiderstand)
Instance: mii-exa-test-data-lungenfunktion-sr-eff-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-r-effektiv
Usage: #example
Description: "Lungenfunktion sR_eff: 1.10 kPa.s (leicht erhoeht)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#1366667009 "Specific airway resistance (observable entity)"
* code.coding[loinc] = $loinc#98084-7 "Specific effective resistance.airway mean Calculated"
* valueQuantity = 1.10 'kPa.s' "kPa.s"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[percentPredicted].code.coding[loinc] = $loinc#98087-0 "Specific effective resistance.airway/Predicted mean"
* component[percentPredicted].valueQuantity = 115 '%' "%"

// sG_tot (spezifische Atemwegs-Conductance)
Instance: mii-exa-test-data-lungenfunktion-sg-total-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-sg-total
Usage: #example
Description: "Lungenfunktion sG_tot: 0.74 /kPa.s (erniedrigt)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#79412009 "Specific airway conductance (observable entity)"
* valueQuantity = 0.74 '/kPA.s' "/kPA*s"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// TLC (totale Lungenkapazitaet)
Instance: mii-exa-test-data-lungenfunktion-tlc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-tlc
Usage: #example
Description: "Lungenfunktion TLC: 5.90 L (107 % vom Soll)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#57566009 "Total lung capacity (observable entity)"
* code.coding[loinc] = $loinc#19859-8 "Total lung capacity by Plethysmograph body box"
* valueQuantity = 5.90 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#19861-4 "Total lung capacity Predicted"
* component[predicted].valueQuantity = 5.50 'L' "L"
* component[percentPredicted].code.coding[loinc] = $loinc#89085-5 "Total lung capacity measured/predicted by Plethysmograph body box"
* component[percentPredicted].valueQuantity = 107 '%' "%"

// RV (Residualvolumen)
Instance: mii-exa-test-data-lungenfunktion-rv-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rv
Usage: #example
Description: "Lungenfunktion RV: 2.60 L (130 % vom Soll, Ueberblaehung)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#42457008 "Residual respiratory volume (observable entity)"
* code.coding[loinc] = $loinc#20146-7 "Residual volume"
* valueQuantity = 2.60 'L' "L"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#20145-9 "Residual volume Predicted"
* component[predicted].valueQuantity = 2.00 'L' "L"
* component[percentPredicted].code.coding[loinc] = $loinc#94125-2 "Residual volume/Predicted by Plethysmograph body box"
* component[percentPredicted].valueQuantity = 130 '%' "%"

// RV/TLC
Instance: mii-exa-test-data-lungenfunktion-rv-tlc-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rvl-tlc
Usage: #example
Description: "Lungenfunktion RV/TLC: 44 % (erhoeht)"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1)
* code.coding[sct] = $sct20260701#1366666000 "Residual volume/total lung capacity ratio (observable entity)"
* code.coding[loinc] = $loinc#81454-1 "Residual volume/Total capacity --pre bronchodilation"
* valueQuantity = 44 '%' "%"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* component[predicted].code.coding[loinc] = $loinc#43252-6 "Residual volume/Total capacity Predicted"
* component[predicted].valueQuantity = 36 '%' "%"

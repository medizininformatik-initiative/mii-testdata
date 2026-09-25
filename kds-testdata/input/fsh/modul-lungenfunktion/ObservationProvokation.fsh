// ============================================================================
// MII Lungenfunktion Test Data - Provokationstest-Observations
// Methacholin-Provokation: FEV1 (prae/post), PEF, R_tot, sR_tot, FRC,
// Dosis-Schwellwert und kumulierte Dosis
// Befund: positiver Provokationstest (FEV1-Abfall > 20 %)
// ============================================================================

// Atemfrequenz nach Methacholin-Gabe
Instance: mii-exa-test-data-lungenfunktion-bf-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bf
Usage: #example
Description: "Lungenfunktion BF (Provokation, nach Methacholin): 20/min"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct20260701#271625008 "Rate of spontaneous respiration (observable entity)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* partOf = Reference(mii-exa-test-data-lungenfunktion-provokationstest-messung-1)
* effectiveDateTime = "2025-02-18T11:30:00+01:00"
* issued = "2025-02-18T12:00:00+01:00"
* valueQuantity = 20 '/min' "/min"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"
* referenceRange.low = 12 '/min' "/min"
* referenceRange.high = 18 '/min' "/min"

// FEV1 vor Methacholin-Gabe (Baseline)
Instance: mii-exa-test-data-lungenfunktion-fev-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev
Usage: #example
Description: "Lungenfunktion FEV1 (Provokation, Baseline): 2.10 L"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#59328004 "Forced expired volume in 1 second (observable entity)"
* code.coding[loinc] = $loinc#43253-4 "FEV1 --pre dose methacholine"
* valueQuantity = 2.10 'L' "L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// FEV1 nach letzter Methacholin-Dosisstufe (maximaler Abfall)
Instance: mii-exa-test-data-lungenfunktion-fev-prov-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev
Usage: #example
Description: "Lungenfunktion FEV1 (Provokation, nach Methacholin): 1.55 L (-26 %)"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#59328004 "Forced expired volume in 1 second (observable entity)"
* code.coding[loinc] = $loinc#43255-9 "FEV1 --post dose methacholine"
* valueQuantity = 1.55 'L' "L"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// PEF nach Methacholin-Gabe
Instance: mii-exa-test-data-lungenfunktion-pef-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-pef
Usage: #example
Description: "Lungenfunktion PEF (Provokation, nach Methacholin): 4.10 L/s"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#18491006 "Peak expiratory flow rate (observable entity)"
* code.coding[loinc] = $loinc#33452-4 "Maximum expiratory gas flow Respiratory system airway"
* valueQuantity = 4.10 'L/s' "L/s"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// R_tot nach Methacholin-Gabe
Instance: mii-exa-test-data-lungenfunktion-r-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-r
Usage: #example
Description: "Lungenfunktion R_tot (Provokation, nach Methacholin): 0.55 kPa/(L/s)"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#16162007 "Total airway resistance (observable entity)"
* code.coding[loinc] = $loinc#20083-2 "Airway resistance mean by Plethysmograph body box"
* valueQuantity = 0.55 'kPa/(L/s)' "kPa/(L/s)"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// sR_tot nach Methacholin-Gabe
Instance: mii-exa-test-data-lungenfunktion-sr-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-r-spezifisch
Usage: #example
Description: "Lungenfunktion sR_tot (Provokation, nach Methacholin): 1.80 kPa.s"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#1366667009 "Specific airway resistance (observable entity)"
* code.coding[loinc] = $loinc#91980-3 "Specific airway resistance by Plethysmograph body box"
* valueQuantity = 1.80 'kPa.s' "kPa.s"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// FRC nach Methacholin-Gabe
Instance: mii-exa-test-data-lungenfunktion-frc-prov-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-frc
Usage: #example
Description: "Lungenfunktion FRC (Provokation, nach Methacholin): 3.60 L"
* insert LufuObsBase
* code.coding[sct] = $sct20260701#65825000 "Functional residual capacity (observable entity)"
* code.coding[loinc] = $loinc#19846-5 "Functional residual capacity by Plethysmograph body box"
* valueQuantity = 3.60 'L' "L"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct20260701#249862003 "Sitting upright (finding)"

// Methacholin-Dosis-Schwellwert (PD20)
Instance: mii-exa-test-data-lungenfunktion-dosis-schwellwert-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis
Usage: #example
Description: "Lungenfunktion Dosis-Schwellwert (PD20): 0.30 mg Methacholin"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-dosis-gabe-2)
* code.coding[sct] = $sct20260701#1376040001 "Dose of methacholine to achieve maximal drop of forced expired volume in 1 second (observable entity)"
* code.coding[loinc] = $loinc#65866-6 "Methacholine [Mass] of Dose"
* valueQuantity = 0.30 'mg' "mg"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"

// Kumulierte Methacholin-Dosis
Instance: mii-exa-test-data-lungenfunktion-dosis-kumuliert-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis
Usage: #example
Description: "Lungenfunktion Dosis kumuliert: 0.34 mg Methacholin"
* insert LufuObsBase
* partOf = Reference(mii-exa-test-data-lungenfunktion-dosis-gabe-2)
* code.coding[sct] = $sct20260701#1376040001 "Dose of methacholine to achieve maximal drop of forced expired volume in 1 second (observable entity)"
* code.coding[loinc] = $loinc#65866-6 "Methacholine [Mass] of Dose"
* valueQuantity = 0.34 'mg' "mg"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"

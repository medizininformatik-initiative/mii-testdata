// =============================================================================
// PolygenerRisikoScore (RiskAssessment) -- NEW in 2026
// =============================================================================

// Patient-3: PRS for colorectal cancer risk
Instance: mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/polygener-risiko-score
Usage: #example
Description: "RiskAssessment: Polygener Risiko Score fuer kolorektales Karzinom"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/risiko-bewertungen"
* identifier.value = "PRS-CRC-2022-0407-001"
* status = #final
* code = $sct#721961004 "Risk assessment score (observable entity)"
* code.text = "Polygener Risiko Score (PRS)"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* occurrenceDateTime = "2022-04-07"
* condition = Reference(mii-exa-test-data-patient-3-diagnose-1)
* basis = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* prediction[0].outcome = $sct#363510005 "Malignant tumor of large intestine (disorder)"
* prediction[0].outcome.text = "Kolorektales Karzinom"
* prediction[0].probabilityDecimal = 0.32
* prediction[0].qualitativeRisk = http://terminology.hl7.org/CodeSystem/risk-probability#high "High likelihood"
* prediction[0].relativeRisk = 2.8
* prediction[0].whenRange.low = 50 'a' "years"
* prediction[0].whenRange.high = 80 'a' "years"

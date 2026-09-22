// ============================================================================
// MII Lungenfunktion Test Data - Befunde (DiagnosticReports)
// Spirometrie, Bodyplethysmographie, Diffusion, Provokationstest
// (alle abgeleitet von mii-pr-lungenfunktion-befund)
//
// HINWEIS zur Slice-Belegung von DiagnosticReport.result (Upstream-Bug):
// Das result-Slicing (Diskriminator type:$this) kann Referenzen auf
// BF- und FEV_FVC-Observations nicht sauber trennen; result:BF ist max 1.
// Deshalb enthaelt der Spirometrie-Befund FEV_FVC (aber kein BF) und der
// Bodyplethysmographie-Befund BF (aber kein FEV_FVC).
// Details: docs/research-lungenfunktion.md
// ============================================================================

RuleSet: LufuBefundBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category.coding[loinc] = $loinc#58477-1 "Pulmonary function study"
* category.coding[diagnostic-service-sections] = $v2-0074#PF
* category.coding[sct] = $sct20260701#720449003 "Pulmonary function report (record artifact)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* issued = "2025-02-18T12:15:00+01:00"

// Spirometrie-Befund
Instance: mii-exa-test-data-lungenfunktion-spirometrie-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie
Usage: #example
Description: "Lungenfunktion Spirometrie-Befund: leichte obstruktive Ventilationsstoerung"
* insert LufuBefundBase
* code.coding[sct] = $sct20260701#127783003 "Spirometry (procedure)"
* code.coding[loinc] = $loinc#18759-1 "Spirometry study"
* effectiveDateTime = "2025-02-18T09:00:00+01:00"
* result[FEV_FVC] = Reference(mii-exa-test-data-lungenfunktion-fev-fvc-1)
* result[FEV] = Reference(mii-exa-test-data-lungenfunktion-fev-1)
* result[FVC] = Reference(mii-exa-test-data-lungenfunktion-fvc-1)
* result[IC] = Reference(mii-exa-test-data-lungenfunktion-ic-1)
* result[MEF] = Reference(mii-exa-test-data-lungenfunktion-mef-1)
* result[PEF] = Reference(mii-exa-test-data-lungenfunktion-pef-1)
* result[IRV_ERV] = Reference(mii-exa-test-data-lungenfunktion-irv-erv-1)
* result[VC] = Reference(mii-exa-test-data-lungenfunktion-vc-1)
* conclusion = "Leichte obstruktive Ventilationsstoerung (FEV1/FVC 67.7 %, FEV1 74 % vom Soll) bei normaler Vitalkapazitaet."
* conclusionCode.coding[icd10-gm] = $icd-10-gm#J45.9 "Asthma bronchiale, nicht näher bezeichnet"
* conclusionCode.coding[icd10-gm].version = "2026"
* presentedForm.contentType = #application/pdf
* presentedForm.url = "https://www.charite.de/fhir/lungenfunktion/befunde/spirometrie-2025-02-18.pdf"
* presentedForm.title = "Spirometrie-Befund vom 18.02.2025"

// Bodyplethysmographie-Befund
Instance: mii-exa-test-data-lungenfunktion-bodyplethysmografie-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie
Usage: #example
Description: "Lungenfunktion Bodyplethysmographie-Befund: erhoehter Atemwegswiderstand, leichte Ueberblaehung"
* insert LufuBefundBase
* code.coding[sct] = $sct20260701#28275007 "Total body plethysmography (procedure)"
* effectiveDateTime = "2025-02-18T09:30:00+01:00"
* result[BF] = Reference(mii-exa-test-data-lungenfunktion-bf-1)
* result[FEV] = Reference(mii-exa-test-data-lungenfunktion-fev-1)
* result[FVC] = Reference(mii-exa-test-data-lungenfunktion-fvc-1)
* result[IC] = Reference(mii-exa-test-data-lungenfunktion-ic-1)
* result[MEF] = Reference(mii-exa-test-data-lungenfunktion-mef-1)
* result[PEF] = Reference(mii-exa-test-data-lungenfunktion-pef-1)
* result[IRV_ERV] = Reference(mii-exa-test-data-lungenfunktion-irv-erv-1)
* result[VC] = Reference(mii-exa-test-data-lungenfunktion-vc-1)
* result[FRC] = Reference(mii-exa-test-data-lungenfunktion-frc-1)
* result[R_tot] = Reference(mii-exa-test-data-lungenfunktion-r-1)
* result[sR_tot] = Reference(mii-exa-test-data-lungenfunktion-sr-1)
* result[sR_eff] = Reference(mii-exa-test-data-lungenfunktion-sr-eff-1)
* result[sG_tot] = Reference(mii-exa-test-data-lungenfunktion-sg-total-1)
* result[TLC] = Reference(mii-exa-test-data-lungenfunktion-tlc-1)
* result[RV] = Reference(mii-exa-test-data-lungenfunktion-rv-1)
* result[RV_TLC] = Reference(mii-exa-test-data-lungenfunktion-rv-tlc-1)
* conclusion = "Erhoehter totaler und spezifischer Atemwegswiderstand, RV und RV/TLC erhoeht im Sinne einer leichten Ueberblaehung. TLC normwertig."

// Diffusions-Befund
Instance: mii-exa-test-data-lungenfunktion-diffusion-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-diffusion
Usage: #example
Description: "Lungenfunktion Diffusions-Befund: normale CO-Diffusionskapazitaet"
* insert LufuBefundBase
* code.coding[sct] = $sct20260701#36421003 "Carbon monoxide diffusing capacity measurement (procedure)"
* effectiveDateTime = "2025-02-18T10:15:00+01:00"
* result[DLCO] = Reference(mii-exa-test-data-lungenfunktion-dlco-1)
* result[DLCOc] = Reference(mii-exa-test-data-lungenfunktion-dlcoc-1)
* result[KCO] = Reference(mii-exa-test-data-lungenfunktion-kco-1)
* result[KCOc] = Reference(mii-exa-test-data-lungenfunktion-kcoc-1)
* result[VA] = Reference(mii-exa-test-data-lungenfunktion-va-1)
* result[Hb] = Reference(mii-exa-test-data-lungenfunktion-hb-1)
* conclusion = "Normale CO-Diffusionskapazitaet (DLCO 92 % vom Soll), auch nach Hb-Korrektur unauffaellig."

// Provokationstest-Befund
Instance: mii-exa-test-data-lungenfunktion-provokationstest-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-provokationstest
Usage: #example
Description: "Lungenfunktion Provokationstest-Befund: positiver Methacholin-Provokationstest"
* insert LufuBefundBase
* code.coding[sct] = $sct20260701#252520007 "Methacholine challenge (procedure)"
* effectiveDateTime = "2025-02-18T11:00:00+01:00"
* result[Dosis_Schwellwert] = Reference(mii-exa-test-data-lungenfunktion-dosis-schwellwert-1)
* result[Dosis_kumuliert] = Reference(mii-exa-test-data-lungenfunktion-dosis-kumuliert-1)
* result[FEV][+] = Reference(mii-exa-test-data-lungenfunktion-fev-prov-1)
* result[FEV][+] = Reference(mii-exa-test-data-lungenfunktion-fev-prov-2)
* result[PEF] = Reference(mii-exa-test-data-lungenfunktion-pef-prov-1)
* result[R_tot] = Reference(mii-exa-test-data-lungenfunktion-r-prov-1)
* result[sR_tot] = Reference(mii-exa-test-data-lungenfunktion-sr-prov-1)
* result[FRC] = Reference(mii-exa-test-data-lungenfunktion-frc-prov-1)
* conclusion = "Positiver Methacholin-Provokationstest: FEV1-Abfall um 26 % bei kumulativer Dosis von 0.34 mg (PD20 = 0.30 mg). Befund vereinbar mit bronchialer Hyperreagibilitaet bei Asthma bronchiale."
* conclusionCode.coding[icd10-gm] = $icd-10-gm#J45.0 "Vorwiegend allergisches Asthma bronchiale"
* conclusionCode.coding[icd10-gm].version = "2026"

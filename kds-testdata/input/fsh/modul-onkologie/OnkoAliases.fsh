// ============================================================================
// MII Onkologie Module - Additional Aliases
// These aliases complement those in the main aliases.fsh
// ============================================================================

// MII Onko - Allgemeine CodeSysteme
Alias: $mii-cs-onko-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention
// NOTE: The profile snapshot in 2026.0.1 uses mii-cs-therapie-stellungzurop (without onko- prefix).
// The CodeSystem resource itself has the onko- prefix, but we must match the profile's fixedUri.
Alias: $mii-cs-onko-therapie-stellungzurop = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-stellungzurop
Alias: $mii-cs-onko-therapie-ende-grund = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund
Alias: $mii-cs-onko-therapie-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ
Alias: $mii-cs-onko-residualstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus

// 05 - Diagnose
Alias: $mii-cs-onko-primaertumor-diagnosesicherung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung
Alias: $mii-cs-onko-seitenlokalisation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation

// 06 - Histologie
Alias: $mii-cs-onko-grading = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading

// 08 - TNM
Alias: $mii-cs-onko-tnm-version = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version
Alias: $UICC = https://www.uicc.org/resources/tnm

// 09 - Weitere Klassifikationen
Alias: $mii-cs-onko-weitere-klassifikationen-obds = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds

// 11 - Fernmetastasen
Alias: $mii-cs-onko-fernmetastasen = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen

// 12 - Allgemeiner Leistungszustand
Alias: $mii-cs-onko-allgemeiner-leistungszustand-ecog = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog
Alias: $mii-cs-onko-allgemeiner-leistungszustand-karnofsky = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky
Alias: $mii-cs-onko-asa = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds

// 13 - Operation
Alias: $mii-cs-onko-operation-komplikation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation
Alias: $mii-cs-onko-operation-urgency = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency

// 14 - Strahlentherapie
Alias: $mii-cs-onko-strahlentherapie-strahlenart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart
Alias: $mii-cs-onko-strahlentherapie-applikationsart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart
Alias: $mii-cs-onko-strahlentherapie-zielgebiet = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet
Alias: $mii-cs-onko-strahlentherapie-boost = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost

// 15 - Nebenwirkung
Alias: $mii-cs-onko-nebenwirkung-ctcae-grad = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad

// 16 - Systemische Therapie
Alias: $mii-cs-onko-systemische-therapie-protokolle = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle

// 17 - Verlauf
Alias: $mii-cs-onko-verlauf-gesamtbeurteilung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung
Alias: $mii-cs-onko-verlauf-primaertumor = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor
Alias: $mii-cs-onko-verlauf-lymphknoten = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten
Alias: $mii-cs-onko-verlauf-fernmetastasen = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen

// 18-19 - Tumorkonferenz
Alias: $mii-cs-onko-therapieplanung-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ
Alias: $mii-cs-onko-therapieabweichung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung

// 20 - Tod
Alias: $mii-cs-onko-tod = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod

// 23 - Genetische Variante
Alias: $mii-cs-onko-genetische-variante-auspraegung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung

// 24 - Studienteilnahme
Alias: $mii-cs-onko-studienteilnahme = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme

// Prostata-spezifisch
Alias: $mii-vs-onko-prostata-gleason-patterns = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns
Alias: $mii-cs-onko-prostata-postsurgical-complications = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications

// Mamma-spezifisch
Alias: $mii-cs-onko-mamma-her2neu-status-obds = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds
Alias: $mii-cs-onko-mamma-her2neu-status-leitlinie = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie
Alias: $mii-cs-onko-mamma-rezeptorstatus-leitlinie = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie

// KRK-spezifisch
Alias: $mii-cs-onko-krk-anastomoseninsuffizienz = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz

// Melanom-spezifisch
Alias: $mii-cs-onko-melanom-ulzeration = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration
Alias: $mii-cs-onko-melanom-ldh = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ldh

// MII Procedure
Alias: $mii-procedure = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure

// Standard Terminologien (falls nicht schon definiert)
Alias: $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $ICD10GM = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $OPS = http://fhir.de/CodeSystem/bfarm/ops
Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org
Alias: $ATC_DE = http://fhir.de/CodeSystem/bfarm/atc
Alias: $UNII = http://fdasis.nlm.nih.gov
Alias: $MEDDRA = https://www.meddra.org
Alias: $RADLEX = http://radlex.org

// KBV Extensions
Alias: $icd-seitenlokalisation = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION

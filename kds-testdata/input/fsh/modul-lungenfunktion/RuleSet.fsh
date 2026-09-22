// ============================================================================
// Gemeinsame RuleSets fuer die Module Kardiologie und Lungenfunktion
// (SNOMED-CT-Versions-String, den die 2027er-Ballot-Profile in ihren
// Pattern-Codings fixieren)
// ============================================================================

RuleSet: SCT20260701
* version = "http://snomed.info/sct/900000000000207008/version/20260701"

// Gemeinsame Basis-Regeln fuer alle Lungenfunktions-Observations
// (Kategorie "procedure" gemaess Pattern der Lufu-Profile)
RuleSet: LufuObsBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #final
* category = $observation-category#procedure
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* issued = "2025-02-18T12:00:00+01:00"

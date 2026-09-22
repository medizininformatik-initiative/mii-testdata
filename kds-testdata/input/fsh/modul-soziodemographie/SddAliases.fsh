// ============================================================================
// Soziodemographie - modul-lokale Aliases
// ============================================================================

Alias: $sdd-cs-ausbildung = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-ausbildung
Alias: $sdd-cs-berufliche-stellung-lang = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-berufliche-stellung-lang
Alias: $sdd-cs-berufliche-stellung-minimal = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-berufliche-stellung-minimal
Alias: $sdd-cs-beschaeftigungsstatus-lang = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-beschaeftigungsstatus-lang
Alias: $sdd-cs-beschaeftigungsstatus-minimal = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-beschaeftigungsstatus-minimal
Alias: $sdd-cs-betreuungssituation = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-betreuungssituation
Alias: $sdd-cs-einkommen = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-einkommen
Alias: $sdd-cs-erhebungsmethode = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-erhebungsmethode
Alias: $sdd-cs-merkzeichen = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-merkzeichen
Alias: $sdd-cs-schulabschluss = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schulabschluss
Alias: $sdd-cs-schwerbehindertenausweis = https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schwerbehindertenausweis
Alias: $v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $iso3166 = urn:iso:std:iso:3166

// Gemeinsame Basis-Regeln aller Soziodemographie-Observations
// (Status, Kategorien-Slices, Patientenbezug, Erhebungszeitpunkt)
RuleSet: SddObservationBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[social-history] = $observation-category#social-history
* category[survey] = $observation-category#survey
* subject = Reference(mii-exa-test-data-soziodemographie-patient-1)
* effectiveDateTime = "2025-05-12"

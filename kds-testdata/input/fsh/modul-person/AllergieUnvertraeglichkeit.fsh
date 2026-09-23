// ============================================================================
// MII Person Module - AllergieUnvertraeglichkeit
// Covers: https://www.medizininformatik-initiative.de/fhir/modul-person/StructureDefinition/AllergieUnvertraeglichkeit
// ============================================================================

Instance: mii-exa-test-data-patient-1-allergie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-person/StructureDefinition/AllergieUnvertraeglichkeit
Usage: #example
Description: "AllergyIntolerance: Penicillin-Allergie (Urtikaria, moderat) fuer Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive "Inactive"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
// Abatement-Extension: Allergie seit 2023 nicht mehr nachweisbar (inaktiv)
* extension[abatement].valueDateTime = "2023-11-01"
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#91936005 "Allergy to penicillin (finding)"
* patient = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* onsetDateTime = "2018-06-12"
* recordedDate = "2024-02-23T12:30:00+01:00"
* reaction.manifestation = $sct#126485001 "Urticaria (disorder)"
* reaction.severity = #moderate
* reaction.exposureRoute = $sct#26643006 "Oral route (qualifier value)"

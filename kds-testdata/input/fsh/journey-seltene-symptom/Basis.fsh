// ============================================================================
// JOURNEY "Diagnostische Odyssee — Morbus Fabry" (Patient-13)
// ----------------------------------------------------------------------------
// Modulübergreifende Testpatientin: Basismodule + Symptom + Seltene
// Erkrankungen. Vorbild: CORD-MI (Collaboration on Rare Diseases).
//
// Der Prüfwert dieser Journey ist eine ZEITSPANNE, die über getrennte
// Modulbundles nicht messbar ist: Erstsymptom 2011 -> gesicherte Diagnose
// 2023-12-08 = 12 Jahre diagnostische Latenz. Genau diese Größe ist der
// Kennwert, den CORD-MI-artige Auswertungen aus Routinedaten gewinnen wollen.
// Sie entsteht erst dadurch, dass die Symptome (Modul Symptom, mit ihren
// onsetPeriod-Angaben) und die Diagnose (Modul Seltene) an DEMSELBEN
// Patienten hängen.
//
// Module: Person · Fall · Diagnose · Labor · Medikation · Consent
//         + Symptom · Seltene Erkrankungen
//
// Zeitschiene
//   2011        erste Akroparästhesien (Schulalter), als "Wachstumsschmerz"
//               eingeordnet
//   2014        Hypohidrose und Hitzeintoleranz
//   2016-2019   rezidivierende abdominelle Schmerzattacken, mehrfach als
//               Reizdarmsyndrom gewertet
//   2023-11-14  nephrologische Vorstellung wegen Proteinurie (E1)
//   2023-11-20  Alpha-Galaktosidase-A-Aktivität erniedrigt
//   2023-12-08  genetische Bestätigung, Diagnose Morbus Fabry (E2)
//   2024-01-15  Therapieplan, Start der Enzymersatztherapie
//   2024-02-05  Einschluss in das Fabry-Register
//
// Bundle-Registrierung: Bundle.fsh, Block "Patient-13".
// ============================================================================

Instance: mii-exa-test-data-patient-13
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-13 (Journey Seltene Erkrankung / diagnostische Odyssee)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[versichertenId].use = #official
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value = "M456789012"
* identifier[versichertenId].assigner.identifier.use = #official
* identifier[versichertenId].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[versichertenId].assigner.identifier.value = "109519005"
* insert AddPID(620447183, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* name.use = #official
* name.family = "Kastner"
* name.given[0] = "Miriam"
* insert AddGender(female)
* birthDate = "1989-06-11"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line[0] = "Wiclefstraße 8"
* address[Strassenanschrift].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line[0].extension[0].valueString = "Wiclefstraße"
* address[Strassenanschrift].line[0].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line[0].extension[1].valueString = "8"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].city.extension[0].url = "http://fhir.de/StructureDefinition/destatis/ags"
* address[Strassenanschrift].city.extension[0].valueCoding = http://fhir.de/sid/destatis/ags#11000000
* address[Strassenanschrift].postalCode = "10551"
* address[Strassenanschrift].country = "DE"

// ----------------------------------------------------------------------------
// E1 — nephrologische Ambulanz: der Zufallsbefund, der die Odyssee beendet
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Nephrologische Ambulanz Patient 13 (Abklärung Proteinurie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000018, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-13, 0400)
* period.start = "2023-11-14T10:00:00+01:00"
* period.end = "2023-11-14T11:30:00+01:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// E2 — humangenetische Ambulanz: Diagnosestellung
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Humangenetische Ambulanz Patient 13 (Diagnosemitteilung Morbus Fabry)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000019, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-13, 3700)
* period.start = "2023-12-08T09:00:00+01:00"
* period.end = "2023-12-08T10:45:00+01:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// E3 — Zentrum für Seltene Erkrankungen: Therapieeinleitung
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-encounter-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Zentrum für Seltene Erkrankungen Patient 13 (Therapieeinleitung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000020, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-13, 0100)
* period.start = "2024-01-15T09:00:00+01:00"
* period.end = "2024-01-15T13:00:00+01:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// Consent — MII Broad Consent
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-13-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: MII Broad Consent für Patient 13"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddConsent(mii-exa-test-data-patient-13, 2023-11-14T10:15:00+01:00, mii-exa-test-data-organization-charite)
* patient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* patient.identifier.value = "M456789012"
* extension[domainReference].url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* extension[domainReference].extension[domain].url = "domain"
* extension[domainReference].extension[domain].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[domainReference].extension[domain].valueReference.display = "MII Broad Consent Domäne Charité"
* policyRule.coding = $v3-ActCode#OPTIN "opt-in"
* policyRule.text = "MII Broad Consent Opt-in"
* provision.period.start = "2023-11-14"
* provision.period.end = "2053-11-13"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2023-11-14"
* provision.provision[=].period.end = "2053-11-13"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-11-14"
* provision.provision[=].period.end = "2053-11-13"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-11-14"
* provision.provision[=].period.end = "2053-11-13"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen"

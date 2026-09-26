// ============================================================================
// JOURNEY "Personalisierte Onkologie — MSI-high Kolonkarzinom" (Patient-14)
// ----------------------------------------------------------------------------
// Modulübergreifende Testpatient:in: Basismodule + Onkologie + MTB.
// Vorbild: PM4Onco / MIRACUM Molekulares Tumorboard.
//
// Der Prüfwert dieser Journey ist eine KETTE über drei Module, die kein
// Modulbundle herstellen kann:
//   Onko-Diagnose -> Onko-Befund -> TNM -> Onko-Tumorkonferenz
//     -> MTB-Behandlungsepisode -> NGS-Variante + MSI + TMB
//     -> MTB-Therapeutische-Implikation -> MTB-Therapieempfehlung
//     -> Onko-Systemische-Therapie -> Onko-Verlauf
// Die Frage "welcher molekulare Befund hat zu welcher Therapie geführt, und
// wie war das Ansprechen?" ist damit durchgehend beantwortbar. Über die
// getrennten Modulbundles mit je eigenen Patienten ist sie es nicht.
//
// Module: Person · Fall · Prozedur · Medikation · Consent
//         + Onkologie · MTB
//
// Zeitschiene
//   2024-03-04  Koloskopie mit Biopsie, Verdacht Sigmakarzinom
//   2024-03-12  Sigmaresektion (E1)
//   2024-03-20  Pathologie: Adenokarzinom G2, pT3 pN2 M1 (Leber)
//   2024-03-26  prätherapeutische Tumorkonferenz -> Molekulardiagnostik
//   2024-04-09  NGS: BRAF V600E, MSI-high, TMB 41 Mut/Mb
//   2024-04-18  MTB-Beschluss: Pembrolizumab statt Chemotherapie
//   2024-05-02  Start Pembrolizumab (E2)
//   2024-08-14  Verlauf: Teilremission
//
// Bundle-Registrierung: Bundle.fsh, Block "Patient-14".
// ============================================================================

Instance: mii-exa-test-data-patient-14
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-14 (Journey Personalisierte Onkologie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[versichertenId].use = #official
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value = "P567890123"
* identifier[versichertenId].assigner.identifier.use = #official
* identifier[versichertenId].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[versichertenId].assigner.identifier.value = "109519005"
* insert AddPID(884612095, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* name.use = #official
* name.family = "Brenneke"
* name.given[0] = "Hartmut"
* insert AddGender(male)
* birthDate = "1966-02-27"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line[0] = "Rigaer Straße 77"
* address[Strassenanschrift].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line[0].extension[0].valueString = "Rigaer Straße"
* address[Strassenanschrift].line[0].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line[0].extension[1].valueString = "77"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].city.extension[0].url = "http://fhir.de/StructureDefinition/destatis/ags"
* address[Strassenanschrift].city.extension[0].valueCoding = http://fhir.de/sid/destatis/ags#11000000
* address[Strassenanschrift].postalCode = "10247"
* address[Strassenanschrift].country = "DE"

// ----------------------------------------------------------------------------
// E1 — stationäre Operation
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Stationäre Sigmaresektion Patient 14"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000021, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-14, 1500)
* period.start = "2024-03-11"
* period.end = "2024-03-22"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* diagnosis[0].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#hospital-main-diagnosis "Krankenhaus Hauptdiagnose"
* diagnosis[0].rank = 1
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#2 "arbeitsunfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// E2 — onkologische Tagesklinik: Immuntherapie
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Onkologische Tagesklinik Patient 14 (Immuntherapie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000022, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-14, 0500)
* period.start = "2024-05-02T08:00:00+02:00"
* period.end = "2024-05-02T13:00:00+02:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// Operation
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Offene Sigmaresektion mit Anastomose (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddProzedur(completed, 387713003, 84604002, 2024, 5-455.71, mii-exa-test-data-patient-14, 60184004, Offene Sigmaresektion mit Anastomose bei Sigmakarzinom)
* performedPeriod.start = "2024-03-12T08:15:00+01:00"
* performedPeriod.end = "2024-03-12T11:40:00+01:00"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2024-03-12T13:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)

// ----------------------------------------------------------------------------
// Consent — Voraussetzung sowohl für die MII-Sekundärnutzung als auch für die
// Fallvorstellung im Molekularen Tumorboard
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: MII Broad Consent für Patient 14"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddConsent(mii-exa-test-data-patient-14, 2024-03-11T14:00:00+01:00, mii-exa-test-data-organization-charite)
* patient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* patient.identifier.value = "P567890123"
* extension[domainReference].url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* extension[domainReference].extension[domain].url = "domain"
* extension[domainReference].extension[domain].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[domainReference].extension[domain].valueReference.display = "MII Broad Consent Domäne Charité"
* policyRule.coding = $v3-ActCode#OPTIN "opt-in"
* policyRule.text = "MII Broad Consent Opt-in"
* provision.period.start = "2024-03-11"
* provision.period.end = "2054-03-10"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2024-03-11"
* provision.provision[=].period.end = "2054-03-10"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-11"
* provision.provision[=].period.end = "2054-03-10"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-11"
* provision.provision[=].period.end = "2054-03-10"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-11"
* provision.provision[=].period.end = "2054-03-10"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen"

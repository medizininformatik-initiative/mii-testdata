// ============================================================================
// JOURNEY "Sepsis auf der Intensivstation" (Patient-12)
// ----------------------------------------------------------------------------
// Modulübergreifende Testpatient:in — Basismodule + ICU + Mikrobiologie auf
// EINEM Patienten. Vorbild: Infektionssurveillance und Antibiotic Stewardship
// auf der Intensivstation (SMITH ASIC / HELP, SmICS).
//
// Der eigentliche Prüfwert dieser Journey ist EINE Kante, die kein Modulbundle
// herstellen kann: die Therapieumstellung auf Meropenem referenziert über
// reasonReference DIREKT den mikrobiologischen Resistenzbefund. Genau dieser
// Join — "welche Antibiotikaumstellung folgte auf welchen Resistenzbefund?" —
// ist die Kernfrage von Stewardship-Auswertungen und über getrennte
// Modulbundles mit je eigenen Patienten nicht formulierbar.
//
// Module: Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent
//         + ICU · Mikrobiologie
//
// Zeitschiene
//   2025-03-08 14:20  Aufnahme, ambulant erworbene Pneumonie, septischer Schock
//   2025-03-08 18:00  Intubation, Verlegung Intensivstation, Beatmungsbeginn
//   2025-03-08 18:30  Blutkultur + Trachealsekret abgenommen
//   2025-03-08 19:00  empirische Therapie Piperacillin/Tazobactam
//   2025-03-09 09:00  SOFA 12, Laktat 4.8 mmol/L
//   2025-03-10 08:00  Blutkultur positiv, gramnegative Stäbchen
//   2025-03-10 16:00  Klebsiella pneumoniae identifiziert
//   2025-03-11 09:00  Antibiogramm: Pip/Tazo R, Ceftazidim R, Cipro R, Mero S
//                     -> 3MRGN, ESBL nachgewiesen
//   2025-03-11 11:00  DESHALB Umstellung auf Meropenem
//   2025-03-13 09:00  SOFA 9
//   2025-03-16 09:00  SOFA 4, Extubation
//   2025-03-18        Verlegung Normalstation
//   2025-03-25        Entlassung
//
// Bundle-Registrierung: Bundle.fsh, Block "Patient-12".
// Die Patientenressource liegt bewusst hier und nicht in modul-person/
// Patient.fsh: dort arbeitet parallel eine andere Session.
// ============================================================================

Instance: mii-exa-test-data-patient-12
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-12 (Journey Sepsis/Intensivstation)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[versichertenId].use = #official
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value = "G345678901"
* identifier[versichertenId].assigner.identifier.use = #official
* identifier[versichertenId].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[versichertenId].assigner.identifier.value = "109519005"
* insert AddPID(733815094, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* name.use = #official
* name.family = "Woltmann"
* name.given[0] = "Gerhard"
* insert AddGender(male)
* birthDate = "1953-04-22"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line[0] = "Gubener Straße 31"
* address[Strassenanschrift].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line[0].extension[0].valueString = "Gubener Straße"
* address[Strassenanschrift].line[0].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line[0].extension[1].valueString = "31"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].city.extension[0].url = "http://fhir.de/StructureDefinition/destatis/ags"
* address[Strassenanschrift].city.extension[0].valueCoding = http://fhir.de/sid/destatis/ags#11000000
* address[Strassenanschrift].postalCode = "10243"
* address[Strassenanschrift].country = "DE"

// ----------------------------------------------------------------------------
// E1 — Einrichtungskontakt (Gesamtaufenthalt)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 12 (Sepsis bei Pneumonie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000016, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-12, 0100)
* period.start = "2025-03-08T14:20:00+01:00"
* period.end = "2025-03-25T11:00:00+01:00"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-12-diagnose-1)
* diagnosis[0].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#hospital-main-diagnosis "Krankenhaus Hauptdiagnose"
* diagnosis[0].use.coding[DiagnosesubTyp] = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[0].rank = 1
* diagnosis[1].condition = Reference(mii-exa-test-data-patient-12-diagnose-2)
* diagnosis[1].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#secondary-DRG "Sekundär-DRG"
* diagnosis[1].rank = 2
* hospitalization.admitSource = $Aufnahmeanlass#N "Notfall"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#2 "arbeitsunfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// E2 — Abteilungskontakt Intensivstation
// Erster Abteilungskontakt mit Kontaktart "intensivstationaer" in den
// Testdaten; partOf verknüpft ihn mit dem Einrichtungskontakt.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Abteilungskontakt Intensivstation Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000017, finished, IMP, abteilungskontakt, intensivstationaer, mii-exa-test-data-patient-12, 3600)
* period.start = "2025-03-08T18:00:00+01:00"
* period.end = "2025-03-18T10:00:00+01:00"
* partOf = Reference(mii-exa-test-data-patient-12-encounter-1)
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// Diagnosen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Pneumonie durch Klebsiella pneumoniae für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnose(J15.0, 2024, mii-exa-test-data-patient-12, 2025-03-10, Pneumonie durch Klebsiella pneumoniae - erregergesichert am 10.03.)
* code.coding[sct] = $sct#64479007 "Pneumonia caused by Klebsiella pneumoniae"
* code.text = "Klebsiellen-Pneumonie"
* encounter = Reference(mii-exa-test-data-patient-12-encounter-1)
* onsetDateTime = "2025-03-06"

Instance: mii-exa-test-data-patient-12-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Sepsis durch gramnegative Erreger für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnose(A41.58, 2024, mii-exa-test-data-patient-12, 2025-03-08, Sepsis durch sonstige gramnegative Erreger - septischer Schock bei Aufnahme)
* code.text = "Gramnegative Sepsis mit septischem Schock"
* encounter = Reference(mii-exa-test-data-patient-12-encounter-1)
* onsetDateTime = "2025-03-08"

// ----------------------------------------------------------------------------
// Prozedur — endotracheale Intubation
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Endotracheale Intubation für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddProzedur(completed, 387713003, 112798008, 2024, 8-701, mii-exa-test-data-patient-12, 44567001, Endotracheale Intubation bei respiratorischer Erschoepfung)
* performedDateTime = "2025-03-08T17:52:00+01:00"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2025-03-08T19:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)

// ----------------------------------------------------------------------------
// Consent — MII Broad Consent, hier durch die gesetzliche Betreuung erteilt
// (Patient war bei Aufnahme nicht einwilligungsfähig, Nachholung nach
// Extubation ist der Regelfall in Intensiv-Kohorten).
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: MII Broad Consent für Patient 12 (nach Extubation nachgeholt)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddConsent(mii-exa-test-data-patient-12, 2025-03-19T11:00:00+01:00, mii-exa-test-data-organization-charite)
* patient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* patient.identifier.value = "G345678901"
* extension[domainReference].url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* extension[domainReference].extension[domain].url = "domain"
* extension[domainReference].extension[domain].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[domainReference].extension[domain].valueReference.display = "MII Broad Consent Domäne Charité"
* policyRule.coding = $v3-ActCode#OPTIN "opt-in"
* policyRule.text = "MII Broad Consent Opt-in"
* provision.period.start = "2025-03-19"
* provision.period.end = "2055-03-18"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2025-03-19"
* provision.provision[=].period.end = "2055-03-18"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2025-03-19"
* provision.provision[=].period.end = "2055-03-18"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2025-03-19"
* provision.provision[=].period.end = "2055-03-18"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen"

// ============================================================================
// JOURNEY "Forschungsvorhaben + Soziodemographie + PROM-Verlauf" (Patient-11)
// ----------------------------------------------------------------------------
// Modulübergreifende Testpatientin: EIN Patient, der Basismodule UND
// Erweiterungsmodule verbindet. Die Modulbundles (bundle-studien-1,
// bundle-soziodemographie-1, bundle-pro-1) sind technisch vollständig, haben
// aber jeweils EIGENE Patienten — über sie lässt sich nicht joinen. Diese
// Journey schliesst genau diese Lücke.
//
// Vorbild: beobachtende Registerstudie zu kardiovaskulärem Risiko mit
// strukturierter Basisdokumentation und PROM-Verlauf (ACRIBiS-artig).
//
// Module: Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent
//         + Studie · Soziodemographie · PRO
//
// Zeitschiene
//   2025-01-20  stationäre Aufnahme wegen kardialer Dekompensation (E1)
//   2025-01-21  TEE, NT-proBNP
//   2025-01-22  MII Broad Consent
//   2025-01-28  Entlassung mit HFrEF-Standardtherapie
//   2025-02-03  Studieneinschluss-Anfrage
//   2025-02-10  Baseline-Visite T0 (E2): Studien-Consent, Einschluss,
//               soziodemographische Erhebung, PROM-Baseline
//   2025-05-12  Visite T3 (E3): PROM-Verlauf
//   2025-08-11  Visite T6 (E4): PROM-Verlauf + Depressionsscreening
//
// Bundle-Registrierung: Bundle.fsh, Block "Patient-11".
// ============================================================================

// Die Patientenressource selbst liegt bei den übrigen Person-Modul-Patienten:
// modul-person/Patient.fsh, Block "Patient-11".

// ----------------------------------------------------------------------------
// E1 — stationärer Index-Aufenthalt (kardiale Dekompensation)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Stationärer Index-Aufenthalt Patient 11 (kardiale Dekompensation)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000012, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-11, 0300)
* period.start = "2025-01-20"
* period.end = "2025-01-28"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-11-diagnose-1)
* diagnosis[0].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#treatment-diagnosis "Behandlungsrelevante Diagnosen"
* diagnosis[0].use.coding[DiagnosesubTyp] = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[0].rank = 1
* hospitalization.admitSource = $Aufnahmeanlass#N "Notfall"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#2 "arbeitsunfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// E2/E3/E4 — ambulante Studienvisiten T0 / T3 / T6
// class=AMB + Kontaktart "ub" (Untersuchung und Behandlung): in den bisherigen
// Testdaten war JEDER Encounter IMP/normalstationaer — die ambulante
// Studienvisite ist hier erstmals abgebildet.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Ambulante Studien-Baseline-Visite T0 Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000013, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-11, 0300)
* period.start = "2025-02-10T09:00:00+01:00"
* period.end = "2025-02-10T11:30:00+01:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

Instance: mii-exa-test-data-patient-11-encounter-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Ambulante Studienvisite T3 Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000014, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-11, 0300)
* period.start = "2025-05-12T09:15:00+02:00"
* period.end = "2025-05-12T10:30:00+02:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

Instance: mii-exa-test-data-patient-11-encounter-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Ambulante Studienvisite T6 Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddEncounter(MII_0000015, finished, AMB, einrichtungskontakt, ub, mii-exa-test-data-patient-11, 0300)
* period.start = "2025-08-11T09:00:00+02:00"
* period.end = "2025-08-11T10:15:00+02:00"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// ----------------------------------------------------------------------------
// Diagnosen
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Linksherzinsuffizienz NYHA III für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnose(I50.13, 2024, mii-exa-test-data-patient-11, 2025-01-20, Linksherzinsuffizienz NYHA III mit Beschwerden bei leichterer Belastung)
* code.coding[sct] = $sct#84114007 "Heart failure"
* code.text = "Herzinsuffizienz NYHA III"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* onsetDateTime = "2023-09-14"

Instance: mii-exa-test-data-patient-11-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Diabetes mellitus Typ 2 (Komorbidität) für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddDiagnose(E11.90, 2024, mii-exa-test-data-patient-11, 2025-01-20, Diabetes mellitus Typ 2 ohne Komplikationen - Komorbiditaet)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)

// ----------------------------------------------------------------------------
// Prozedur — TEE zur Abklärung der Dekompensation
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Usage: #example
Description: "Procedure: Transösophageale Echokardiographie für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddProzedur(completed, 363679005, 105376000, 2024, 3-052, mii-exa-test-data-patient-11, 80891009, Transoesophageale Echokardiographie - EF 32 Prozent)
* performedDateTime = "2025-01-21T11:20:00+01:00"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2025-01-21T13:00:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* recorder = Reference(mii-exa-test-data-practitioner-role-physician-1)

// ----------------------------------------------------------------------------
// Consent — MII Broad Consent (Voraussetzung der Sekundärnutzung)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: MII Broad Consent für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* insert AddConsent(mii-exa-test-data-patient-11, 2025-01-22T10:30:00+01:00, mii-exa-test-data-organization-charite)
* patient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* patient.identifier.value = "K234567890"
* extension[domainReference].url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* extension[domainReference].extension[domain].url = "domain"
* extension[domainReference].extension[domain].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[domainReference].extension[domain].valueReference.display = "MII Broad Consent Domäne Charité"
* policyRule.coding = $v3-ActCode#OPTIN "opt-in"
* policyRule.text = "MII Broad Consent Opt-in"
* provision.period.start = "2025-01-22"
* provision.period.end = "2055-01-21"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2025-01-22"
* provision.provision[=].period.end = "2055-01-21"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2025-01-22"
* provision.provision[=].period.end = "2055-01-21"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2025-01-22"
* provision.provision[=].period.end = "2055-01-21"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen"

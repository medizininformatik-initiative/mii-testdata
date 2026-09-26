// ============================================================================
// JOURNEY Patient-11 — Modul Studie
// Forschungsvorhaben MII-CARE-PRO-2025: prospektive Kohortenstudie zur
// PROM-gestützten Verlaufsbeobachtung bei Herzinsuffizienz.
// Das Studienregister (Library mii-exa-test-data-studien-register-1) ist
// gemeinsame Infrastruktur und wird aus dem Studien-Modulbundle mitgenutzt.
// ============================================================================

Instance: mii-exa-test-data-patient-11-studie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie
Usage: #example
Description: "ResearchStudy: MII-CARE-PRO-2025 - PROM-gestützte Verlaufsbeobachtung bei Herzinsuffizienz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[Label].extension[value].valueString = "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz (MII-CARE-PRO-2025)"
* extension[Label].extension[type].valueCodeableConcept = $title-type#scientific
* extension[AssociatedParty].extension[role].valueCodeableConcept = $research-study-party-role#sponsor
* extension[AssociatedParty].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[Ethikvotum].extension[status].valueString = "Zustimmende Bewertung"
* extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Charité - Universitätsmedizin Berlin"
* extension[Ethikvotum].extension[ethiknummer].valueString = "EA2/084/24"
* extension[Studienregister].valueReference = Reference(mii-exa-test-data-studien-register-1)
* extension[Eligibility].valueReference = Reference(mii-exa-test-data-patient-11-studien-group-1)
* extension[Akronym].valueString = "MII-CARE-PRO-2025"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2025-01-02"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 450
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 38
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "exakt"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2025-02-28"
* extension[Finanzierung].valueString = "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/drks"
* identifier.value = "DRKS00041282"
* title = "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz"
* status = #active
* category = $research-study-phase#n-a
* focus = $sct#84114007 "Heart failure"
* focus.text = "Chronische Herzinsuffizienz"
* keyword.text = "Patient-Reported Outcome Measures"
* arm[0].name = "Beobachtungskohorte"
* arm[0].description = "Strukturierte PROM-Erhebung zu Baseline, Monat 3 und Monat 6 ohne Intervention"

// ----------------------------------------------------------------------------
// Eligibility-Population
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-studien-group-1
InstanceOf: Group
Usage: #example
Description: "Group: Eligibility-Population der Studie MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* active = true
* type = #person
* actual = false
* code = $sct#116154003 "Patient (person)"
* managingEntity = Reference(mii-exa-test-data-organization-charite)

// ----------------------------------------------------------------------------
// Ein-/Ausschlusskriterien
// Profilname enthält upstream den Tippfehler "auschluss" — bewusst so
// verwendet (siehe modul-studien/EvidenceVariable.fsh).
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-studien-kriterium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
Usage: #example
Description: "EvidenceVariable: Ein-/Ausschlusskriterien der Studie MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
// Einschluss: Mindestalter 18 Jahre
* characteristic[0].extension[linkId].valueId = "krit-alter"
* characteristic[0].extension[definitionByTypeAndValue].extension[type].valueCodeableConcept = $sct#424144002 "Current chronological age"
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.value = 18
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.comparator = #>=
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.unit = "year"
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.system = $ucum
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.code = #a
* characteristic[0].description = "Alter mindestens 18 Jahre"
* characteristic[0].definitionCodeableConcept.coding = $sct#424144002 "Current chronological age (observable entity)"
* characteristic[0].definitionCodeableConcept.text = "Mindestalter"
* characteristic[0].exclude = false
// Einschluss: gesicherte chronische Herzinsuffizienz
* characteristic[1].extension[linkId].valueId = "krit-hi"
* characteristic[1].description = "Gesicherte chronische Herzinsuffizienz, mindestens NYHA II"
* characteristic[1].definitionCodeableConcept = $sct#84114007 "Heart failure (disorder)"
* characteristic[1].exclude = false
// Ausschluss: schwere kognitive Beeinträchtigung (Selbstauskunft nicht möglich)
* characteristic[2].description = "Schwere kognitive Beeinträchtigung - selbständige Beantwortung der Fragebögen nicht möglich"
* characteristic[2].definitionCodeableConcept = $sct#702956004 "Severe cognitive impairment (finding)"
* characteristic[2].definitionCodeableConcept.text = "Keine Selbstauskunft möglich"
* characteristic[2].exclude = true

// ----------------------------------------------------------------------------
// Studieneinschluss-Anfrage (Screening nach dem Index-Aufenthalt)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-studien-anfrage-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage
Usage: #example
Description: "ServiceRequest: Studieneinschluss-Anfrage Patient 11 in MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* intent = #proposal
* category = $sct#110465008 "Clinical trial"
* code = $sct#702475000 "Referral to clinical trial"
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-2)
* authoredOn = "2025-02-03"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* supportingInfo[Studie] = Reference(mii-exa-test-data-patient-11-studie-1)
* supportingInfo[Proband] = Reference(mii-exa-test-data-patient-11-proband-1)
* note.text = "Einschlusskriterien nach Index-Aufenthalt erfüllt; Ansprache zur Baseline-Visite geplant."

// ----------------------------------------------------------------------------
// Studienteilnahme: Einwilligung + ResearchSubject
// Der studienspezifische Consent ist ein ANDERER als der MII Broad Consent
// (patient-11-consent-1) — beide sind in der Journey enthalten, weil die
// Sekundärnutzung den Broad Consent und die Studienteilnahme die
// studienspezifische Einwilligung voraussetzt.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-studien-consent-1
InstanceOf: Consent
Usage: #example
Description: "Consent: Einwilligung in die Teilnahme an MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* scope = $consentscope#research
* category = $consentcategorycodes#research
* patient = Reference(mii-exa-test-data-patient-11)
* dateTime = "2025-02-10"
* policyRule = $consentpolicycodes#cric

Instance: mii-exa-test-data-patient-11-proband-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband
Usage: #example
Description: "ResearchSubject: Patient 11 als Proband in MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[subjectIdentificationCode].type = $v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode"
* identifier[subjectIdentificationCode].value = "CARE-PRO-0038"
* status = #on-study
* period.start = "2025-02-10"
* period.end = "2026-02-09"
* study = Reference(mii-exa-test-data-patient-11-studie-1)
* individual = Reference(mii-exa-test-data-patient-11)
* consent = Reference(mii-exa-test-data-patient-11-studien-consent-1)

// ----------------------------------------------------------------------------
// Studienprotokoll
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-studien-dokument-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument
Usage: #example
Description: "DocumentReference: Studienprotokoll MII-CARE-PRO-2025"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* custodian = Reference(mii-exa-test-data-organization-charite)
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf"
* content.attachment.size = 986112
* content.attachment.title = "Studienprotokoll MII-CARE-PRO-2025 v1.0"
* context.related = Reference(mii-exa-test-data-patient-11-studie-1)

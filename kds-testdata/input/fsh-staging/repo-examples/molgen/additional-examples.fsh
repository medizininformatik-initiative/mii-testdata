Instance: mii-exa-molgen-patient
InstanceOf: Patient
Usage: #example
* identifier[0].use = #usual
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[=].value = "42285243"
* identifier[=].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[=].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[=].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z234567890"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "109519005"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[+].use = #secondary
* identifier[=].type = http://fhir.de/CodeSystem/identifier-type-de-basis#PKV
* identifier[=].value = "123456"
* identifier[=].assigner.display = "Signal Iduna"
* name[0].use = #official
* name[=].family = "Van-der-Dussen"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Van-der-Dussen"
* name[=].given[0] = "Maja"
* name[=].given[+] = "Julia"
* name[=].prefix = "Prof. Dr. med."
* name[=].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].prefix.extension.valueCode = #AC
* name[+].use = #maiden
* name[=].family = "Haffer"
* gender = #female
* birthDate = "1968-09-19"
* deceasedBoolean = false
* address.type = #both
* address.line = "Anna-Louisa-Karsch Str. 2"
* address.city = "Berlin"
* address.state = "DE-BE"
* address.postalCode = "10178"
* address.country = "DE"

Instance: mii-exa-molgen-practitioner-lab
InstanceOf: Practitioner
Usage: #example
* active = true
* name.use = #official
* name.text = "Dr. Daniel Schmidt"
* name.family = "Schmidt"
* name.given = "Daniel"
* name.prefix = "Dr."

Instance: mii-exa-molgen-practitioner-physician
InstanceOf: Practitioner
Usage: #example
* active = true
* name.use = #official
* name.text = "Dr. Linda Rubens"
* name.family = "Rubens"
* name.given = "Linda"
* name.prefix = "Dr."

Instance: mii-exa-molgen-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
* type = http://snomed.info/sct#128159001 "Tissue specimen from colon (specimen)"
* collection.collectedDateTime = "2022-03-24T12:44:00+01:00"
* collection.bodySite = http://snomed.info/sct#71854001 "Colon structure (body structure)"
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "5432"
* status = #available
* subject = Reference(mii-exa-molgen-patient)

Instance: mii-exa-molgen-device-sequencer
InstanceOf: Device
Usage: #example
* status = #active
* manufacturer = "Illumina"
* deviceName.name = "MiSeq"
* deviceName.type = DeviceNameType#manufacturer-name

Instance: mii-exa-molgen-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
* status = #available
* type = http://snomed.info/sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-molgen-patient-2)
* receivedTime = "2021-11-24"
* collection.collectedDateTime = "2021-11-23"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "specimen_02"

Instance: mii-exa-molgen-patient-2
InstanceOf: Patient
Usage: #example
* identifier[0].use = #usual
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "https://www.charite.de/fhir/sid/patienten"
* identifier[=].value = "146314909"
* identifier[=].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[=].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[=].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z900211002"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "109519005"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[0].use = #official
* name[=].family = "Müller"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Müller"
* name[=].given[0] = "Melanie"
* name[=].given[+] = "Marie"
* gender = #female
* birthDate = "2021-09-19"
* deceasedBoolean = false
* address.type = #both
* address.line = "Anna-Louisa-Karsch Str. 2"
* address.city = "Berlin"
* address.state = "DE-BE"
* address.postalCode = "10178"
* address.country = "DE"

//Illumina NovaSeq 6000-Sequencer

Instance: mii-exa-molgen-device-sequencer-2
InstanceOf: Device
Usage: #example
* status = #active
* manufacturer = "Illumina"
* deviceName.name = "NovaSeq 6000-Sequencer"
* deviceName.type = DeviceNameType#manufacturer-name

Instance: mii-exa-molgen-chargeitem-ebm-21
InstanceOf: http://fhir.de/StructureDefinition/chargeitem-de-ebm
Usage: #example
* status = #billable
* code = https://fhir.kbv.de/NamingSystem/KBV_NS_Base_EBM#11513 "Postnatale Mutationssuche zum Nachweis oder Ausschluss einer krankheitsrelevanten oder krankheitsauslösenden konstitutionellen genomischen Mutation"
* subject = Reference(mii-exa-molgen-patient-2)
* quantity.value = 72

Instance: mii-exa-molgen-chargeitem-ebm-22
InstanceOf: http://fhir.de/StructureDefinition/chargeitem-de-ebm
Usage: #example
* status = #billable
* code = https://fhir.kbv.de/NamingSystem/KBV_NS_Base_EBM#11512 "Gezielter Nachweis oder Ausschluss von krankheitsrelevanten oder krankheitsauslösenden großen Deletionen und/oder Duplikationen"
* subject = Reference(mii-exa-molgen-patient-2)
* quantity.value = 6

Instance: mii-exa-molgen-chargeitem-ebm-23
InstanceOf: http://fhir.de/StructureDefinition/chargeitem-de-ebm
Usage: #example
* status = #billable
* code = https://fhir.kbv.de/NamingSystem/KBV_NS_Base_EBM#11302 "Zuschlag für Gemeinkosten und die wissenschaftliche ärztliche Beurteilung und Befundung komplexer genetischer Analysen im individuellen klinischen Kontext bei seltenen Erkrankungen"
* subject = Reference(mii-exa-molgen-patient-2)
* quantity.value = 1

Instance: mii-exa-molgen-chargeitem-ebm-24
InstanceOf: http://fhir.de/StructureDefinition/chargeitem-de-ebm
Usage: #example
* status = #billable
* code = https://fhir.kbv.de/NamingSystem/KBV_NS_Base_EBM#11301 "Grundpauschale humangenetische in-vitro-Diagnostik bei Probeneinsendung"
* subject = Reference(mii-exa-molgen-patient-2)
* quantity.value = 1

Instance: mii-exa-befund-bundle-1-braf
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-07-14T12:11:00+01:00"
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-befundbericht-1"
* entry[=].resource = mii-exa-molgen-befundbericht-1
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/mii-exa-molgen-befundbericht-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-medikationsempfehlung-1"
* entry[=].resource = mii-exa-molgen-medikationsempfehlung-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/mii-exa-molgen-medikationsempfehlung-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/example-mii-molgen-folgemassnahme-1"
* entry[=].resource = mii-exa-molgen-folgemassnahme-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/mii-exa-molgen-folgemassnahme-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-family-member-history-1"
* entry[=].resource = mii-exa-molgen-family-member-history-1
* entry[=].request.method = #PUT
* entry[=].request.url = "FamilyMemberHistory/mii-exa-molgen-family-member-history-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-anforderung-1"
* entry[=].resource = mii-exa-molgen-anforderung-1
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/mii-exa-molgen-anforderung-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/example-mii-molgen-patient"
* entry[=].resource = mii-exa-molgen-patient
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/mii-exa-molgen-patient"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/example-mii-molgen-practitioner-lab"
* entry[=].resource = mii-exa-molgen-practitioner-lab
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/mii-exa-molgen-practitioner-lab"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/example-mii-molgen-specimen-1"
* entry[=].resource = mii-exa-molgen-specimen-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/mii-exa-molgen-specimen-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-diagnostische-implikation-1"
* entry[=].resource = mii-exa-molgen-diagnostische-implikation-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-molgen-diagnostische-implikation-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-therapeutische-implikation-1"
* entry[=].resource = mii-exa-molgen-therapeutische-implikation-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-molgen-therapeutische-implikation-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-variante-1"
* entry[=].resource = mii-exa-molgen-variante-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-molgen-variante-1"
//* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-untersuchte-region-1"
//* entry[=].resource = mii-exa-molgen-untersuchte-region-1
//* entry[=].request.method = #PUT
//* entry[=].request.url = "Observation/mii-exa-molgen-untersuchte-region-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-genotyp-1"
* entry[=].resource = mii-exa-molgen-genotyp-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-molgen-genotyp-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-mutationslast-1"
* entry[=].resource = mii-exa-molgen-mutationslast-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-molgen-mutationslast-1"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-device-sequencer"
* entry[=].resource = mii-exa-molgen-device-sequencer
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/mii-exa-molgen-device-sequencer"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/mii-exa-molgen-practitioner-physician"
* entry[=].resource = mii-exa-molgen-practitioner-physician
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/mii-exa-molgen-practitioner-physician"
* insert Bundle(mii-exa-molgen-mikrosatelliteninstabilitaet-1, Observation)
//* insert Bundle(mii-exa-molgen-ergebnis-zusammenfassung-1, Observation)

Instance: mii-exa-molgen-specimen-brca1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
* status = #available
* type = http://snomed.info/sct#127457009 "Tissue specimen from breast (specimen)"
* subject = Reference(mii-exa-molgen-patient-brca1)
* receivedTime = "2022-11-01"
* collection.collectedDateTime = "2022-11-01"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "specimen_03"

Instance: mii-exa-molgen-patient-brca1
InstanceOf: Patient
Usage: #example
* identifier[0].use = #usual
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "https://www.charite.de/fhir/sid/patienten"
* identifier[=].value = "9166147031"
* identifier[=].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[=].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[=].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z977188448"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "109519005"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[0].use = #official
* name[=].family = "Schmidt-Huber"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Schmidt"
* name[=].given[0] = "Elisa"
* gender = #female
* birthDate = "1973-03-12"
* deceasedBoolean = false
* address.type = #both
* address.line = "Anna-Louisa-Karsch Str. 2"
* address.city = "Berlin"
* address.state = "DE-BE"
* address.postalCode = "10178"
* address.country = "DE"

Instance: mii-exa-molgen-device-sequencer-nextseq
InstanceOf: Device
Usage: #example
* status = #active
* manufacturer = "Illumina"
* deviceName.name = "NextSeq"
* deviceName.type = DeviceNameType#manufacturer-name

Instance: mii-exa-molgen-bundle-fam-his-breast-ovar-can
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-11-04T13:47:00+01:00"
* insert Bundle(mii-exa-molgen-patient-brca1, Patient)
* insert Bundle(mii-exa-molgen-befundbericht-trurisk-panel, DiagnosticReport)
* insert Bundle(mii-exa-molgen-folgemassnahme-brca1, Task)
* insert Bundle(mii-exa-molgen-prs-brca1, RiskAssessment)
* insert Bundle(mii-exa-molgen-anforderung-trurisk-panel, ServiceRequest)
* insert Bundle(mii-exa-molgen-practitioner-lab, Practitioner)
* insert Bundle(mii-exa-molgen-practitioner-physician, Practitioner)
* insert Bundle(mii-exa-molgen-specimen-brca1, Specimen)
* insert Bundle(mii-exa-molgen-device-sequencer-nextseq, Device)
//* insert Bundle(mii-exa-molgen-ergebnis-zusammenfassung-trurisk-panel, Observation)
* insert Bundle(mii-exa-molgen-variante-brca1, Observation)
* insert Bundle(mii-exa-molgen-diagnostische-implikation-brca1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-ATM, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-BRCA1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-BARD1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-BRCA2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-BRIP1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-CDH1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-CHECK2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-MLH1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-MSH2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-MSH6, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-PALB2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-PMS2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-PTEN, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-RAD51C, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-RAD51D, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-true-risk-panel-v3-TP53, Observation)

// NIPBL

Instance: mii-exa-molgen-bundle-befund-2-nipbl
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-11-21T14:44:00+01:00"
* insert Bundle(mii-exa-molgen-patient-2, Patient)
* insert Bundle(mii-exa-molgen-befundbericht-2, DiagnosticReport)
* insert Bundle(mii-exa-molgen-anforderung-2, ServiceRequest)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-21, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-22, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-23, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-24, ChargeItem)
* insert Bundle(mii-exa-molgen-practitioner-lab, Practitioner)
* insert Bundle(mii-exa-molgen-practitioner-physician, Practitioner)
* insert Bundle(mii-exa-molgen-specimen-2, Specimen)
* insert Bundle(mii-exa-molgen-diagnostische-implikation-2, Observation)
* insert Bundle(mii-exa-molgen-variante-2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-nipbl, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-hdac8, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-rad21, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-smc1a, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-smc3, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-tp63, Observation)
* insert Bundle(mii-exa-molgen-bundle-befund-2-nipbl-condition-lab, Condition)

Instance: mii-exa-molgen-bundle-befund-2-nipbl-condition-lab
InstanceOf: Condition
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* code.coding[0].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[=].extension[=].valueCoding = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT#V
* code.coding[=].version = "2021"
* code.coding[=] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.1 "Angeborene Fehlbildungssyndrome, die vorwiegend mit Kleinwuchs einhergehen"
* code.coding[1] = http://www.omim.org#122470 "Cornelia de Lange syndrome 1"
* subject = Reference(mii-exa-molgen-patient-2)
* recorder = Reference(mii-exa-molgen-practitioner-lab)
* asserter = Reference(mii-exa-molgen-practitioner-lab)
//* encounter = Reference(Patient/12345)
//* onsetPeriod.start = "2019-09-26T12:45:00+01:00"
//* onsetPeriod.end = "2020-03-25T13:00:00+01:00"
* recordedDate = "2022-03-05T10:49:00+01:00"

Instance: mii-exa-molgen-condition-nipbl-clinical
InstanceOf: Condition
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[0].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[=].extension[=].valueCoding = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT#G
* code.coding[=].version = "2021"
* code.coding[=] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.1 "Angeborene Fehlbildungssyndrome, die vorwiegend mit Kleinwuchs einhergehen"
* code.coding[1] = http://www.omim.org#122470 "Cornelia de Lange syndrome 1"
* subject = Reference(mii-exa-molgen-patient-2)
//* encounter = Reference(Patient/12345)
* recorder = Reference(mii-exa-molgen-practitioner-physician)
* asserter = Reference(mii-exa-molgen-practitioner-physician)
* onsetPeriod.start = "2021-09-19"
* onsetPeriod.start.extension.url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetPeriod.start.extension.valueCodeableConcept = http://snomed.info/sct#255407002 "Neonatal (qualifier value)"
* recordedDate = "2022-03-06T07:36:00+01:00"
* evidence.detail = Reference(mii-exa-molgen-befundbericht-2)

Instance: mii-exa-molgen-phenotypic-feature-1
InstanceOf: Observation
Usage: #example
//* meta.profile = "https://github.com/phenopackets/core-ig/StructureDefinition/PhenotypicFeature"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://human-phenotype-ontology.org#HP:0000527 "Long eyelashes"
* effectiveDateTime = "2022-03-13T09:30:00+01:00"
* subject = Reference(mii-exa-molgen-patient-2)
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* performer = Reference(mii-exa-molgen-practitioner-physician)

Instance: mii-exa-molgen-phenotypic-feature-2
InstanceOf: Observation
Usage: #example
//* meta.profile = "https://github.com/phenopackets/core-ig/StructureDefinition/PhenotypicFeature"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://human-phenotype-ontology.org#HP:0001518 "Small for gestational age"
* effectiveDateTime = "2022-03-13T09:30:00+01:00"
* subject = Reference(mii-exa-molgen-patient-2)
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* performer = Reference(mii-exa-molgen-practitioner-physician)

Instance: mii-exa-molgen-phenotypic-feature-3
InstanceOf: Observation
Usage: #example
//* meta.profile = "https://github.com/phenopackets/core-ig/StructureDefinition/PhenotypicFeature"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://human-phenotype-ontology.org#HP:0000252 "Microcephaly"
* effectiveDateTime = "2022-03-13T09:30:00+01:00"
* subject = Reference(mii-exa-molgen-patient-2)
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* performer = Reference(mii-exa-molgen-practitioner-physician)

Instance: mii-exa-molgen-phenotypic-feature-4
InstanceOf: Observation
Usage: #example
//* meta.profile = "https://github.com/phenopackets/core-ig/StructureDefinition/PhenotypicFeature"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://human-phenotype-ontology.org#HP:0003560 "Muscular dystrophy"
* effectiveDateTime = "2022-03-13T09:30:00+01:00"
* subject = Reference(mii-exa-molgen-patient-2)
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* performer = Reference(mii-exa-molgen-practitioner-physician)

Instance: mii-exa-befund-bundle-befund-2-nipbl-clinical
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-11-21T14:44:00+01:00"
* insert Bundle(mii-exa-molgen-patient-2, Patient)
* insert Bundle(mii-exa-molgen-practitioner-lab, Practitioner)
* insert Bundle(mii-exa-molgen-practitioner-physician, Practitioner)
* insert Bundle(mii-exa-molgen-condition-nipbl-clinical, Condition)
* insert Bundle(mii-exa-molgen-phenotypic-feature-1, Observation)
* insert Bundle(mii-exa-molgen-phenotypic-feature-2, Observation)
* insert Bundle(mii-exa-molgen-phenotypic-feature-3, Observation)
* insert Bundle(mii-exa-molgen-phenotypic-feature-4, Observation)
* insert Bundle(mii-exa-molgen-befundbericht-2, DiagnosticReport)
* insert Bundle(mii-exa-molgen-anforderung-2, ServiceRequest)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-21, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-22, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-23, ChargeItem)
* insert Bundle(mii-exa-molgen-chargeitem-ebm-24, ChargeItem)
* insert Bundle(mii-exa-molgen-specimen-2, Specimen)
* insert Bundle(mii-exa-molgen-device-sequencer-2, Device)
* insert Bundle(mii-exa-molgen-diagnostische-implikation-2, Observation)
* insert Bundle(mii-exa-molgen-variante-2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-nipbl, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-hdac8, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-rad21, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-smc1a, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-smc3, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-2-tp63, Observation)
//* insert Bundle(mii-exa-molgen-bundle-befund-2-nipbl-condition-lab, Condition)

// 18.pdf

Instance: mii-exa-molgen-patient-srcc
InstanceOf: Patient
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#PSEUDED
* identifier.system = "https://www.charite.de/fhir/sid/pseudonym"
* identifier.value = "66036015"
* deceasedBoolean = false
* address.type = #both
* address.postalCode = "10"
* address.country = "DE"
* gender = #male
* birthDate = "1986-01"
//* managingOrganization = Reference(Organization/Charite-Universitaetsmedizin-Berlin)

Instance: mii-exa-molgen-specimen-srcc
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
* status = #available
* type = http://snomed.info/sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-molgen-patient-srcc)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "00070024"

Instance: mii-exa-molgen-specimen-srcc-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
* status = #available
* type = http://snomed.info/sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-molgen-patient-srcc)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "00070025"

Instance: mii-exa-molgen-anforderung-srcc
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "7B369EB0"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = http://snomed.info/sct#405825005 "Molecular genetic test (procedure)"
* code.text = "Molekulargenetische Untersuchung (Stufendiagnostik) der relevanten Gene"
* subject = Reference(mii-exa-molgen-patient-srcc)
* authoredOn = "2022-11-30"
* requester = Reference(mii-exa-molgen-practitioner-physician)
* specimen = Reference(mii-exa-molgen-specimen-srcc)
* reasonCode[0].coding[0] = http://snomed.info/sct#87737001 "Signet ring cell carcinoma"
* reasonCode[0].coding[1].system = http://fhir.de/CodeSystem/bfarm/icd-10-gm
* reasonCode[0].coding[1].version = "2024"
* reasonCode[0].coding[1].code = #C16.9
* reasonCode[0].coding[1].display = "Bösartige Neubildung: Magen, nicht näher bezeichnet"
* reasonCode[0].text = "Eigenanamnese: Siegelringkarzinom des Magens, diffus wachsend"
* reasonCode[1].coding[0] = http://snomed.info/sct#429740004 "Family history of malignant neoplasm of breast (situation)"
* reasonCode[1].text = "Mutter an Brustkrebs verstorben"

Instance: mii-exa-molgen-family-member-history-srcc
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient-srcc)
* date = "2022-11-30"
* relationship.coding[snomed] = http://snomed.info/sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#female
* sex.coding[+] = http://snomed.info/sct#248152002 "Female (finding)"
* deceasedBoolean = true
* reasonCode.coding[sct] = http://snomed.info/sct#363349007 "Malignant tumor of stomach"
* condition[0].code.coding[sct] = http://snomed.info/sct#254837009 "Malignant neoplasm of breast (disorder)"
* condition[=].contributedToDeath = true

Instance: mii-exa-molgen-variante-srcc-ctnna1
InstanceOf: mii-pr-molgen-variante
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-srcc)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient-srcc)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method.coding[0] = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-srcc)
* device = Reference(mii-exa-molgen-device-sequencer)
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:2509 "CTNNA1"
* component[representative-transcript-ref-seq].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001903.5
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_001903.5:c.1030del
* component[genomic-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NC_000005.9:g.138163372del
* component[genomic-ref-seq].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NC_000005.9
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#p.(Leu344CysfsTer25)
* component[allelic-state].valueCodeableConcept = http://loinc.org#LA6706-1 "Heterozygous"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0000159 "Deletion"
//* component[amino-acid-change-type].valueCodeableConcept = http://loinc.org#LA6694-9 "Frameshift"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#5q31.2

Instance: mii-exa-molgen-diagnostische-implikation-srcc-ctnna1
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "ClinGen"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://search.clinicalgenome.org/kb/gene-dosage/HGNC:2509"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient-srcc)
* effectiveDateTime = "2022-11-30"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-srcc-ctnna1)
* component[conclusion-string].valueString = "Diese Variante wird nach den ACMG/AMP-Kriterien zusammenfasssend als pathogen bewertet entsprechend IARC Class 5."
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
//* component[functional-effect].valueCodeableConcept = http://sequenceontology.org#SO:0002054 "loss_of_function_variant"
* component[predicted-phenotype].valueCodeableConcept.coding[0] = http://snomed.info/sct#716859000 "Hereditary diffuse carcinoma of stomach (disorder)"
/*

Instance: mii-exa-molgen-untersuchte-region-srcc-apc
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:583, APC, NM_000038.4)

Instance: mii-exa-molgen-untersuchte-region-srcc-atm
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:795, ATM, NM_000051.3)

Instance: mii-exa-molgen-untersuchte-region-srcc-brca1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:1100, BRCA1, NM_007294.3)

Instance: mii-exa-molgen-untersuchte-region-srcc-brca2
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:1101, BRCA2, NM_000059.3)

Instance: mii-exa-molgen-untersuchte-region-srcc-cdh1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:1748, CDH1, NM_004360.4)

Instance: mii-exa-molgen-untersuchte-region-srcc-mlh1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:7127, MLH1, NM_000249.3)

Instance: mii-exa-molgen-untersuchte-region-srcc-msh2
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:7325, MSH2, NM_000251.2)

Instance: mii-exa-molgen-untersuchte-region-srcc-msh3
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:7326, MSH3, NM_002439.4)

Instance: mii-exa-molgen-untersuchte-region-srcc-msh6
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:7329, MSH6, NM_000179.2)

Instance: mii-exa-molgen-untersuchte-region-srcc-mutyh
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:7527, MUTYH, NM_001128425.1)

Instance: mii-exa-molgen-untersuchte-region-srcc-nthl1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:8028, NTHL1, NM_002528.7)

Instance: mii-exa-molgen-untersuchte-region-srcc-pms2
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:9122, PMS2, NM_000535.5)

Instance: mii-exa-molgen-untersuchte-region-srcc-pold1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:9175, POLD1, NM_001256849.1)

Instance: mii-exa-molgen-untersuchte-region-srcc-pole
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:9177, POLE, NM_006231.3)

Instance: mii-exa-molgen-untersuchte-region-srcc-stk11
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:11389, STK11, NM_000455.4)

Instance: mii-exa-molgen-untersuchte-region-srcc-smad4
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:6770, SMAD4, NM_005359.5)

Instance: mii-exa-molgen-untersuchte-region-srcc-tp53
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:11998, TP53, NM_000546.5)

Instance: mii-exa-molgen-untersuchte-region-srcc-ctnna1
InstanceOf: mii-pr-molgen-untersuchte-region
Usage: #example
* insert Region(mii-exa-molgen-patient-srcc, mii-exa-molgen-specimen-srcc, mii-exa-molgen-device-sequencer, HGNC:2509, CTNNA1, NM_001903.5)
*/

Instance: mii-exa-molgen-befundbericht-srcc
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[supportingInfo].valueReference = Reference(mii-exa-molgen-family-member-history-srcc)
* basedOn = Reference(mii-exa-molgen-anforderung-srcc)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code[+] = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient-srcc)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen[0] = Reference(mii-exa-molgen-specimen-srcc)
* specimen[1] = Reference(mii-exa-molgen-specimen-srcc-2)
//* result[gen-grouper] = Reference(mii-exa-molgen-gruppierung-beobachtungen-2-nipbl)
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-srcc-ctnna1)
* result[variant] = Reference(mii-exa-molgen-variante-srcc-ctnna1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-apc)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-atm)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-brca1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-brca2)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-cdh1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-mlh1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-msh2)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-msh3)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-msh6)//
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-muty//h)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-nthl//1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-pms2)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-pold1)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-pole)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-smad4)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-stk11)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-tp53)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-srcc-ctnna1)
* conclusion = "Nachweis der pathogenen Variante im CTNNA1-Gen."

Instance: mii-exa-befund-bundle-befund-srcc
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-12-16T10:09:00+01:00"
* insert Bundle(mii-exa-molgen-patient-srcc, Patient)
* insert Bundle(mii-exa-molgen-practitioner-lab, Practitioner)
* insert Bundle(mii-exa-molgen-practitioner-physician, Practitioner)
* insert Bundle(mii-exa-molgen-specimen-srcc, Specimen)
* insert Bundle(mii-exa-molgen-specimen-srcc-2, Specimen)
* insert Bundle(mii-exa-molgen-befundbericht-srcc, DiagnosticReport)
* insert Bundle(mii-exa-molgen-anforderung-srcc, ServiceRequest)
* insert Bundle(mii-exa-molgen-device-sequencer, Device)
* insert Bundle(mii-exa-molgen-variante-srcc-ctnna1, Observation)
* insert Bundle(mii-exa-molgen-diagnostische-implikation-srcc-ctnna1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-apc, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-atm, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-brca1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-brca2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-cdh1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-mlh1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-msh2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-msh3, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-msh6, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-mutyh, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-nthl1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-pms2, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-pold1, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-pole, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-smad4, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-stk11, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-tp53, Observation)
//* insert Bundle(mii-exa-molgen-untersuchte-region-srcc-ctnna1, Observation)

//http://varnomen.hgvs.org/recommendations/RNA/variant/delins/ (12.pdf)

Instance: mii-exa-molgen-patient-fgfr2-fusion
InstanceOf: Patient
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#PSEUDED
* identifier.system = "https://www.charite.de/fhir/sid/pseudonym"
* identifier.value = "3337167192"
* deceasedBoolean = false
* address.type = #both
* address.postalCode = "10"
* address.country = "DE"
* gender = #female
* birthDate = "1964-05"

Instance: mii-exa-molgen-anforderung-fgfr2-fusion
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "PRK4QE59A"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = http://snomed.info/sct#405825005 "Molecular genetic test (procedure)"
* code.text = "Therapierelevante genetische Veränderungen bei Intrahepatischem Gallengangskarzinom"
* subject = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* authoredOn = "2022-11-30"
* requester = Reference(mii-exa-molgen-practitioner-physician)
* reasonCode[0].coding[0] = http://snomed.info/sct#109842005 "Intrahepatic bile duct carcinoma (disorder)"
* reasonCode[0].coding[1].system = http://fhir.de/CodeSystem/bfarm/icd-10-gm
* reasonCode[0].coding[1].version = "2024"
* reasonCode[0].coding[1].code = #C22.1
* reasonCode[0].coding[1].display = "Intrahepatisches Gallengangskarzinom"

Instance: mii-exa-molgen-variante-fgfr2-fusion
InstanceOf: mii-pr-molgen-variante
Usage: #example
Title: "Variante FGFR2-DBP Fusion"
Description: "Beispiel für genetische Variante FGFR2-DBP Fusion."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-fgfr2-fusion)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method.coding[0] = http://loinc.org#LA26398-0 "Sequencing"
* method.coding[1] = http://loinc.org#86206-0 "Whole genome sequence analysis in Blood or Tissue by Molecular genetics method"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3689 "FGFR2"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0001565 "gene_fusion"
* component[gene-fusion].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3689::HGNC:2697 "FGFR2::DBP"

Instance: mii-exa-molgen-diagnostische-implikation-fgfr2-fusion
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* effectiveDateTime = "2022-11-30"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-fgfr2-fusion)
* component[conclusion-string].valueString = "starke Überexpression (25-fach)"

Instance: mii-exa-molgen-therapeutische-implikation-fgfr2-fusion
InstanceOf: mii-pr-molgen-therapeutische-implikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* subject = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* effectiveDateTime = "2022-11-30"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-fgfr2-fusion)
* component[conclusion-string].valueString = "Hochselektiver FGFR2-Inhibitor RLY-4008 bei Patienten mit Cholangiokarzinomen und anderen soliden Tumoren, mit oder ohne FGFR- gerichtete Vortherapie."
* component[medication-assessed][+].code = http://loinc.org#51963-7 "Medication assessed [ID]"
* component[medication-assessed][=].valueCodeableConcept.coding[0] = http://www.whocc.no/atc#L01EN "Fibroblasten-Wachstumsfaktor-Rezeptor (FGFR)-Tyrosinkinase-Inhibitoren"
* component[medication-assessed][=].valueCodeableConcept.coding[1] = http://snomed.info/sct#1162485005 "Substance with fibroblast growth factor receptor inhibitor mechanism of action (substance)"
* component[evidence-level].valueCodeableConcept.text = "m1c"
* component[phenotypic-treatment-context].valueCodeableConcept.coding[0] = http://snomed.info/sct#109842005 "Intrahepatic bile duct carcinoma (disorder)"
* component[phenotypic-treatment-context].valueCodeableConcept.coding[1].system = http://fhir.de/CodeSystem/bfarm/icd-10-gm
* component[phenotypic-treatment-context].valueCodeableConcept.coding[1].version = "2024"
* component[phenotypic-treatment-context].valueCodeableConcept.coding[1].code = #C22.1
* component[phenotypic-treatment-context].valueCodeableConcept.coding[1].display = "Intrahepatisches Gallengangskarzinom"

Instance: mii-exa-molgen-medikationsempfehlung-fgfr2-fusion
InstanceOf: mii-pr-molgen-medikationsempfehlung
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/medikationsempfehlung)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/medication-recommendation|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-fgfr2-fusion)
* status = TaskStatus#requested
* intent = http://hl7.org/fhir/request-intent#proposal
* code = http://loinc.org#LA26421-0 "Consider alternative medication"
* code.text = "Hochselektive FGFR-Inhibitor-Therapie"
* for = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* reasonReference = Reference(mii-exa-molgen-therapeutische-implikation-fgfr2-fusion)

Instance: mii-exa-molgen-befundbericht-fgfr2-fusion
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[recommended-action].valueReference = Reference(mii-exa-molgen-medikationsempfehlung-fgfr2-fusion)
* basedOn = Reference(mii-exa-molgen-anforderung-fgfr2-fusion)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code[+] = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient-fgfr2-fusion)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-fgfr2-fusion)
* result[variant] = Reference(mii-exa-molgen-variante-fgfr2-fusion)
* result[therapeutic-implication] = Reference(mii-exa-molgen-therapeutische-implikation-fgfr2-fusion)
* conclusion = "Nachweis FGFR2-Fusion. Empfehlung: Hochselektive FGFR-Inhibitor-Therapie."

Instance: mii-exa-befund-bundle-befund-fgfr2-fusion
InstanceOf: Bundle
Usage: #example
* type = #transaction
* timestamp = "2022-12-16T13:47:00+01:00"
* insert Bundle(mii-exa-molgen-patient-fgfr2-fusion, Patient)
* insert Bundle(mii-exa-molgen-practitioner-lab, Practitioner)
* insert Bundle(mii-exa-molgen-practitioner-physician, Practitioner)
* insert Bundle(mii-exa-molgen-befundbericht-fgfr2-fusion, DiagnosticReport)
* insert Bundle(mii-exa-molgen-anforderung-fgfr2-fusion, ServiceRequest)
* insert Bundle(mii-exa-molgen-variante-fgfr2-fusion, Observation)
* insert Bundle(mii-exa-molgen-diagnostische-implikation-fgfr2-fusion, Observation)
* insert Bundle(mii-exa-molgen-therapeutische-implikation-fgfr2-fusion, Observation)
* insert Bundle(mii-exa-molgen-medikationsempfehlung-fgfr2-fusion, Task)

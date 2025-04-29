// Diagnose Patient-1
Instance: mii-exa-test-data-patient-1-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(B05.3, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[icd10-gm].extension[0].valueCoding = $mehrfachcodierungs-kennzeichen#†
* code.coding[icd10-gm].extension[1].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[icd10-gm].extension[1].valueCoding = $seitenlokalisation#B "beiderseits"
* code.coding[icd10-gm].extension[2].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[icd10-gm].extension[2].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* code.coding[alpha-id] = $alpha-id|2023#I29578 "Masern mit Otitis"
* code.coding[sct] = $sct#13420004 "Post measles otitis media (disorder)"
* bodySite.coding[snomed-ct] = $sct#25342003 "Middle ear structure (body structure)"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"

Instance: mii-exa-test-data-patient-1-diagnose-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(H67.1, 2023, mii-exa-test-data-patient-1, 2024-02-12, Masernotitis)
* code.coding[icd10-gm].display = "Otitis media bei anderenorts klassifizierten Viruskrankheiten"
* onsetDateTime = "2024-02-21"
* recordedDate = "2024-02-21"
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-1-diagnose-1)

// Patient-3
Instance: mii-exa-test-data-patient-3-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C21.8, 2022, mii-exa-test-data-patient-3, 2022-04-02, Bösartige anorektale Neubildung)
* code.coding[alpha-id] = $alpha-id|2022#I29975 "Bösartige anorektale Neubildung"
* code.coding[sct] = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
//* code.coding[icd-o-3] = $icd-o-3#8140/3 "Adenokarzinom o.n.A."
* bodySite.coding[snomed-ct] = $sct#281088000 "Structure of anus and/or rectum (body structure)"
//* bodySite.coding[icd-o-3] = $icd-o-3#C21.8
* recordedDate = "2022-04-02"

// Patient-4
Instance: mii-exa-test-data-patient-4-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2024.0.0"
* insert AddDiagnose(C16.9, 2022, mii-exa-test-data-patient-3, 2022-11-30, Bösartige Neubildung des Magens nicht näher bezeichnet)